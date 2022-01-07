
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_stats {scalar_t__ custom_length; int tmfrsp_pdus; int tmfcmd_pdus; int r2t_pdus; int datain_pdus; int scsirsp_pdus; int dataout_pdus; int scsicmd_pdus; int rxdata_octets; int txdata_octets; } ;
struct iscsi_conn {int tmfrsp_pdus_cnt; int tmfcmd_pdus_cnt; int r2t_pdus_cnt; int datain_pdus_cnt; int scsirsp_pdus_cnt; int dataout_pdus_cnt; int scsicmd_pdus_cnt; int rxdata_octets; int txdata_octets; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;



__attribute__((used)) static void
iscsi_iser_conn_get_stats(struct iscsi_cls_conn *cls_conn, struct iscsi_stats *stats)
{
 struct iscsi_conn *conn = cls_conn->dd_data;

 stats->txdata_octets = conn->txdata_octets;
 stats->rxdata_octets = conn->rxdata_octets;
 stats->scsicmd_pdus = conn->scsicmd_pdus_cnt;
 stats->dataout_pdus = conn->dataout_pdus_cnt;
 stats->scsirsp_pdus = conn->scsirsp_pdus_cnt;
 stats->datain_pdus = conn->datain_pdus_cnt;
 stats->r2t_pdus = conn->r2t_pdus_cnt;
 stats->tmfcmd_pdus = conn->tmfcmd_pdus_cnt;
 stats->tmfrsp_pdus = conn->tmfrsp_pdus_cnt;
 stats->custom_length = 0;
}
