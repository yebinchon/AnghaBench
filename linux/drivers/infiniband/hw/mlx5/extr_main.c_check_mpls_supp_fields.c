
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int EOPNOTSUPP ;
 int MLX5_FIELD_SUPPORT_MPLS_EXP ;
 int MLX5_FIELD_SUPPORT_MPLS_LABEL ;
 int MLX5_FIELD_SUPPORT_MPLS_S_BOS ;
 int MLX5_FIELD_SUPPORT_MPLS_TTL ;
 scalar_t__ MLX5_GET (int ,int const*,int ) ;
 int fte_match_mpls ;
 int mpls_exp ;
 int mpls_label ;
 int mpls_s_bos ;
 int mpls_ttl ;

__attribute__((used)) static int check_mpls_supp_fields(u32 field_support, const __be32 *set_mask)
{
 if (MLX5_GET(fte_match_mpls, set_mask, mpls_label) &&
     !(field_support & MLX5_FIELD_SUPPORT_MPLS_LABEL))
  return -EOPNOTSUPP;

 if (MLX5_GET(fte_match_mpls, set_mask, mpls_exp) &&
     !(field_support & MLX5_FIELD_SUPPORT_MPLS_EXP))
  return -EOPNOTSUPP;

 if (MLX5_GET(fte_match_mpls, set_mask, mpls_s_bos) &&
     !(field_support & MLX5_FIELD_SUPPORT_MPLS_S_BOS))
  return -EOPNOTSUPP;

 if (MLX5_GET(fte_match_mpls, set_mask, mpls_ttl) &&
     !(field_support & MLX5_FIELD_SUPPORT_MPLS_TTL))
  return -EOPNOTSUPP;

 return 0;
}
