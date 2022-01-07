
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ACK; scalar_t__ PHY_TEST_PATTERN; scalar_t__ LINK_TEST_PATTRN; scalar_t__ LINK_TRAINING; } ;
union test_response {int raw; TYPE_1__ bits; } ;
union test_request {int raw; TYPE_1__ bits; } ;
typedef int test_response ;
typedef int test_request ;
struct dc_link {int dummy; } ;


 int DP_TEST_REQUEST ;
 int DP_TEST_RESPONSE ;
 int core_link_read_dpcd (struct dc_link*,int ,int *,int) ;
 int core_link_write_dpcd (struct dc_link*,int ,int *,int) ;
 int dp_test_send_link_test_pattern (struct dc_link*) ;
 int dp_test_send_link_training (struct dc_link*) ;
 int dp_test_send_phy_test_pattern (struct dc_link*) ;
 int memset (union test_response*,int ,int) ;

__attribute__((used)) static void handle_automated_test(struct dc_link *link)
{
 union test_request test_request;
 union test_response test_response;

 memset(&test_request, 0, sizeof(test_request));
 memset(&test_response, 0, sizeof(test_response));

 core_link_read_dpcd(
  link,
  DP_TEST_REQUEST,
  &test_request.raw,
  sizeof(union test_request));
 if (test_request.bits.LINK_TRAINING) {

  test_response.bits.ACK = 1;
  core_link_write_dpcd(
   link,
   DP_TEST_RESPONSE,
   &test_response.raw,
   sizeof(test_response));
  dp_test_send_link_training(link);

  test_response.bits.ACK = 0;
 }
 if (test_request.bits.LINK_TEST_PATTRN) {
  dp_test_send_link_test_pattern(link);
  test_response.bits.ACK = 1;
 }
 if (test_request.bits.PHY_TEST_PATTERN) {
  dp_test_send_phy_test_pattern(link);
  test_response.bits.ACK = 1;
 }


 if (test_response.bits.ACK)
  core_link_write_dpcd(
   link,
   DP_TEST_RESPONSE,
   &test_response.raw,
   sizeof(test_response));
}
