; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_resource_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_resource_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.ocrdma_rdma_stats_resp = type { %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats }
%struct.ocrdma_rsrc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@OCRDMA_MAX_DBGFS_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"active_dpp_pds\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"active_non_dpp_pds\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"active_rc_dpp_qps\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"active_uc_dpp_qps\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"active_ud_dpp_qps\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"active_rc_non_dpp_qps\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"active_uc_non_dpp_qps\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"active_ud_non_dpp_qps\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"active_srqs\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"active_rbqs\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"active_64K_nsmr\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"active_64K_to_2M_nsmr\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"active_2M_to_44M_nsmr\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"active_44M_to_1G_nsmr\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"active_1G_to_4G_nsmr\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"active_nsmr_count_4G_to_32G\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"active_32G_to_64G_nsmr\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"active_64G_to_128G_nsmr\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"active_128G_to_higher_nsmr\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"active_embedded_nsmr\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"active_frmr\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"active_prefetch_qps\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"active_ondemand_qps\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"active_phy_mr\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"active_mw\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"threshold_dpp_pds\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"threshold_non_dpp_pds\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"threshold_rc_dpp_qps\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"threshold_uc_dpp_qps\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"threshold_ud_dpp_qps\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"threshold_rc_non_dpp_qps\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"threshold_uc_non_dpp_qps\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"threshold_ud_non_dpp_qps\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"threshold_srqs\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"threshold_rbqs\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"threshold_64K_nsmr\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"threshold_64K_to_2M_nsmr\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"threshold_2M_to_44M_nsmr\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"threshold_44M_to_1G_nsmr\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"threshold_1G_to_4G_nsmr\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"threshold_nsmr_count_4G_to_32G\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"threshold_32G_to_64G_nsmr\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"threshold_64G_to_128G_nsmr\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"threshold_128G_to_higher_nsmr\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"threshold_embedded_nsmr\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"threshold_frmr\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"threshold_prefetch_qps\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"threshold_ondemand_qps\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"threshold_phy_mr\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"threshold_mw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ocrdma_dev*)* @ocrdma_resource_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocrdma_resource_stats(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocrdma_rdma_stats_resp*, align 8
  %6 = alloca %struct.ocrdma_rsrc_stats*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ocrdma_rdma_stats_resp*
  store %struct.ocrdma_rdma_stats_resp* %15, %struct.ocrdma_rdma_stats_resp** %5, align 8
  %16 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, %struct.ocrdma_rdma_stats_resp* %16, i32 0, i32 1
  store %struct.ocrdma_rsrc_stats* %17, %struct.ocrdma_rsrc_stats** %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @OCRDMA_MAX_DBGFS_MEM, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %25 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %24, i32 0, i32 24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @ocrdma_add_stat(i8* %22, i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %34, i32 0, i32 23
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ocrdma_add_stat(i8* %32, i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %45 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %44, i32 0, i32 22
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @ocrdma_add_stat(i8* %42, i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %4, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %55 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %54, i32 0, i32 21
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @ocrdma_add_stat(i8* %52, i8* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %65 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %64, i32 0, i32 20
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ocrdma_add_stat(i8* %62, i8* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** %4, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %4, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %75 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %74, i32 0, i32 19
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @ocrdma_add_stat(i8* %72, i8* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %4, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %85 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %84, i32 0, i32 18
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ocrdma_add_stat(i8* %82, i8* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load i8*, i8** %4, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %4, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %95 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %94, i32 0, i32 17
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @ocrdma_add_stat(i8* %92, i8* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %4, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %4, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %105 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %104, i32 0, i32 16
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @ocrdma_add_stat(i8* %102, i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  %109 = load i8*, i8** %4, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %4, align 8
  %112 = load i8*, i8** %3, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %115 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %114, i32 0, i32 15
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @ocrdma_add_stat(i8* %112, i8* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %4, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %4, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %125 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %124, i32 0, i32 14
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @ocrdma_add_stat(i8* %122, i8* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %127)
  %129 = load i8*, i8** %4, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %4, align 8
  %132 = load i8*, i8** %3, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %135 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %134, i32 0, i32 13
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @ocrdma_add_stat(i8* %132, i8* %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %137)
  %139 = load i8*, i8** %4, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %4, align 8
  %142 = load i8*, i8** %3, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %145 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %144, i32 0, i32 12
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @ocrdma_add_stat(i8* %142, i8* %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %147)
  %149 = load i8*, i8** %4, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %4, align 8
  %152 = load i8*, i8** %3, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %155 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %154, i32 0, i32 11
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @ocrdma_add_stat(i8* %152, i8* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %157)
  %159 = load i8*, i8** %4, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %4, align 8
  %162 = load i8*, i8** %3, align 8
  %163 = load i8*, i8** %4, align 8
  %164 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %165 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %164, i32 0, i32 10
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @ocrdma_add_stat(i8* %162, i8* %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %167)
  %169 = load i8*, i8** %4, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %4, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = load i8*, i8** %4, align 8
  %174 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %175 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %174, i32 0, i32 9
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @ocrdma_add_stat(i8* %172, i8* %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %177)
  %179 = load i8*, i8** %4, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %4, align 8
  %182 = load i8*, i8** %3, align 8
  %183 = load i8*, i8** %4, align 8
  %184 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %185 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %184, i32 0, i32 8
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @ocrdma_add_stat(i8* %182, i8* %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %187)
  %189 = load i8*, i8** %4, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8* %191, i8** %4, align 8
  %192 = load i8*, i8** %3, align 8
  %193 = load i8*, i8** %4, align 8
  %194 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %195 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %194, i32 0, i32 7
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i32 @ocrdma_add_stat(i8* %192, i8* %193, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %197)
  %199 = load i8*, i8** %4, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %4, align 8
  %202 = load i8*, i8** %3, align 8
  %203 = load i8*, i8** %4, align 8
  %204 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %205 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %204, i32 0, i32 6
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @ocrdma_add_stat(i8* %202, i8* %203, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %207)
  %209 = load i8*, i8** %4, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %4, align 8
  %212 = load i8*, i8** %3, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %215 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  %218 = call i32 @ocrdma_add_stat(i8* %212, i8* %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %217)
  %219 = load i8*, i8** %4, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8* %221, i8** %4, align 8
  %222 = load i8*, i8** %3, align 8
  %223 = load i8*, i8** %4, align 8
  %224 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %225 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i32 @ocrdma_add_stat(i8* %222, i8* %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %227)
  %229 = load i8*, i8** %4, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8* %231, i8** %4, align 8
  %232 = load i8*, i8** %3, align 8
  %233 = load i8*, i8** %4, align 8
  %234 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %235 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @ocrdma_add_stat(i8* %232, i8* %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %237)
  %239 = load i8*, i8** %4, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8* %241, i8** %4, align 8
  %242 = load i8*, i8** %3, align 8
  %243 = load i8*, i8** %4, align 8
  %244 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %245 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = call i32 @ocrdma_add_stat(i8* %242, i8* %243, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %247)
  %249 = load i8*, i8** %4, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8* %251, i8** %4, align 8
  %252 = load i8*, i8** %3, align 8
  %253 = load i8*, i8** %4, align 8
  %254 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %255 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = call i32 @ocrdma_add_stat(i8* %252, i8* %253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %257)
  %259 = load i8*, i8** %4, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %4, align 8
  %262 = load i8*, i8** %3, align 8
  %263 = load i8*, i8** %4, align 8
  %264 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %265 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = call i32 @ocrdma_add_stat(i8* %262, i8* %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32 %267)
  %269 = load i8*, i8** %4, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %4, align 8
  %272 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %5, align 8
  %273 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, %struct.ocrdma_rdma_stats_resp* %272, i32 0, i32 0
  store %struct.ocrdma_rsrc_stats* %273, %struct.ocrdma_rsrc_stats** %6, align 8
  %274 = load i8*, i8** %3, align 8
  %275 = load i8*, i8** %4, align 8
  %276 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %277 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %276, i32 0, i32 24
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = call i32 @ocrdma_add_stat(i8* %274, i8* %275, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %279)
  %281 = load i8*, i8** %4, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i8, i8* %281, i64 %282
  store i8* %283, i8** %4, align 8
  %284 = load i8*, i8** %3, align 8
  %285 = load i8*, i8** %4, align 8
  %286 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %287 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %286, i32 0, i32 23
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = call i32 @ocrdma_add_stat(i8* %284, i8* %285, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i32 %289)
  %291 = load i8*, i8** %4, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i8, i8* %291, i64 %292
  store i8* %293, i8** %4, align 8
  %294 = load i8*, i8** %3, align 8
  %295 = load i8*, i8** %4, align 8
  %296 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %297 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %296, i32 0, i32 22
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = call i32 @ocrdma_add_stat(i8* %294, i8* %295, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %299)
  %301 = load i8*, i8** %4, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8* %303, i8** %4, align 8
  %304 = load i8*, i8** %3, align 8
  %305 = load i8*, i8** %4, align 8
  %306 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %307 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %306, i32 0, i32 21
  %308 = load i64, i64* %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = call i32 @ocrdma_add_stat(i8* %304, i8* %305, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %309)
  %311 = load i8*, i8** %4, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  store i8* %313, i8** %4, align 8
  %314 = load i8*, i8** %3, align 8
  %315 = load i8*, i8** %4, align 8
  %316 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %317 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %316, i32 0, i32 20
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  %320 = call i32 @ocrdma_add_stat(i8* %314, i8* %315, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 %319)
  %321 = load i8*, i8** %4, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i8, i8* %321, i64 %322
  store i8* %323, i8** %4, align 8
  %324 = load i8*, i8** %3, align 8
  %325 = load i8*, i8** %4, align 8
  %326 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %327 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %326, i32 0, i32 19
  %328 = load i64, i64* %327, align 8
  %329 = trunc i64 %328 to i32
  %330 = call i32 @ocrdma_add_stat(i8* %324, i8* %325, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 %329)
  %331 = load i8*, i8** %4, align 8
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i8, i8* %331, i64 %332
  store i8* %333, i8** %4, align 8
  %334 = load i8*, i8** %3, align 8
  %335 = load i8*, i8** %4, align 8
  %336 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %337 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %336, i32 0, i32 18
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @ocrdma_add_stat(i8* %334, i8* %335, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i32 %339)
  %341 = load i8*, i8** %4, align 8
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i8, i8* %341, i64 %342
  store i8* %343, i8** %4, align 8
  %344 = load i8*, i8** %3, align 8
  %345 = load i8*, i8** %4, align 8
  %346 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %347 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %346, i32 0, i32 17
  %348 = load i64, i64* %347, align 8
  %349 = trunc i64 %348 to i32
  %350 = call i32 @ocrdma_add_stat(i8* %344, i8* %345, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i32 %349)
  %351 = load i8*, i8** %4, align 8
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i8, i8* %351, i64 %352
  store i8* %353, i8** %4, align 8
  %354 = load i8*, i8** %3, align 8
  %355 = load i8*, i8** %4, align 8
  %356 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %357 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %356, i32 0, i32 16
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = call i32 @ocrdma_add_stat(i8* %354, i8* %355, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 %359)
  %361 = load i8*, i8** %4, align 8
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i8, i8* %361, i64 %362
  store i8* %363, i8** %4, align 8
  %364 = load i8*, i8** %3, align 8
  %365 = load i8*, i8** %4, align 8
  %366 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %367 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %366, i32 0, i32 15
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = call i32 @ocrdma_add_stat(i8* %364, i8* %365, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i32 %369)
  %371 = load i8*, i8** %4, align 8
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i8, i8* %371, i64 %372
  store i8* %373, i8** %4, align 8
  %374 = load i8*, i8** %3, align 8
  %375 = load i8*, i8** %4, align 8
  %376 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %377 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %376, i32 0, i32 14
  %378 = load i64, i64* %377, align 8
  %379 = trunc i64 %378 to i32
  %380 = call i32 @ocrdma_add_stat(i8* %374, i8* %375, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i32 %379)
  %381 = load i8*, i8** %4, align 8
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds i8, i8* %381, i64 %382
  store i8* %383, i8** %4, align 8
  %384 = load i8*, i8** %3, align 8
  %385 = load i8*, i8** %4, align 8
  %386 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %387 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %386, i32 0, i32 13
  %388 = load i64, i64* %387, align 8
  %389 = trunc i64 %388 to i32
  %390 = call i32 @ocrdma_add_stat(i8* %384, i8* %385, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i32 %389)
  %391 = load i8*, i8** %4, align 8
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds i8, i8* %391, i64 %392
  store i8* %393, i8** %4, align 8
  %394 = load i8*, i8** %3, align 8
  %395 = load i8*, i8** %4, align 8
  %396 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %397 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %396, i32 0, i32 12
  %398 = load i64, i64* %397, align 8
  %399 = trunc i64 %398 to i32
  %400 = call i32 @ocrdma_add_stat(i8* %394, i8* %395, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i32 %399)
  %401 = load i8*, i8** %4, align 8
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i8, i8* %401, i64 %402
  store i8* %403, i8** %4, align 8
  %404 = load i8*, i8** %3, align 8
  %405 = load i8*, i8** %4, align 8
  %406 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %407 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %406, i32 0, i32 11
  %408 = load i64, i64* %407, align 8
  %409 = trunc i64 %408 to i32
  %410 = call i32 @ocrdma_add_stat(i8* %404, i8* %405, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i32 %409)
  %411 = load i8*, i8** %4, align 8
  %412 = sext i32 %410 to i64
  %413 = getelementptr inbounds i8, i8* %411, i64 %412
  store i8* %413, i8** %4, align 8
  %414 = load i8*, i8** %3, align 8
  %415 = load i8*, i8** %4, align 8
  %416 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %417 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %416, i32 0, i32 10
  %418 = load i64, i64* %417, align 8
  %419 = trunc i64 %418 to i32
  %420 = call i32 @ocrdma_add_stat(i8* %414, i8* %415, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 %419)
  %421 = load i8*, i8** %4, align 8
  %422 = sext i32 %420 to i64
  %423 = getelementptr inbounds i8, i8* %421, i64 %422
  store i8* %423, i8** %4, align 8
  %424 = load i8*, i8** %3, align 8
  %425 = load i8*, i8** %4, align 8
  %426 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %427 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %426, i32 0, i32 9
  %428 = load i64, i64* %427, align 8
  %429 = trunc i64 %428 to i32
  %430 = call i32 @ocrdma_add_stat(i8* %424, i8* %425, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 %429)
  %431 = load i8*, i8** %4, align 8
  %432 = sext i32 %430 to i64
  %433 = getelementptr inbounds i8, i8* %431, i64 %432
  store i8* %433, i8** %4, align 8
  %434 = load i8*, i8** %3, align 8
  %435 = load i8*, i8** %4, align 8
  %436 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %437 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %436, i32 0, i32 8
  %438 = load i64, i64* %437, align 8
  %439 = trunc i64 %438 to i32
  %440 = call i32 @ocrdma_add_stat(i8* %434, i8* %435, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0), i32 %439)
  %441 = load i8*, i8** %4, align 8
  %442 = sext i32 %440 to i64
  %443 = getelementptr inbounds i8, i8* %441, i64 %442
  store i8* %443, i8** %4, align 8
  %444 = load i8*, i8** %3, align 8
  %445 = load i8*, i8** %4, align 8
  %446 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %447 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %446, i32 0, i32 7
  %448 = load i64, i64* %447, align 8
  %449 = trunc i64 %448 to i32
  %450 = call i32 @ocrdma_add_stat(i8* %444, i8* %445, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i32 %449)
  %451 = load i8*, i8** %4, align 8
  %452 = sext i32 %450 to i64
  %453 = getelementptr inbounds i8, i8* %451, i64 %452
  store i8* %453, i8** %4, align 8
  %454 = load i8*, i8** %3, align 8
  %455 = load i8*, i8** %4, align 8
  %456 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %457 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %456, i32 0, i32 6
  %458 = load i64, i64* %457, align 8
  %459 = trunc i64 %458 to i32
  %460 = call i32 @ocrdma_add_stat(i8* %454, i8* %455, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i32 %459)
  %461 = load i8*, i8** %4, align 8
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds i8, i8* %461, i64 %462
  store i8* %463, i8** %4, align 8
  %464 = load i8*, i8** %3, align 8
  %465 = load i8*, i8** %4, align 8
  %466 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %467 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %466, i32 0, i32 5
  %468 = load i64, i64* %467, align 8
  %469 = trunc i64 %468 to i32
  %470 = call i32 @ocrdma_add_stat(i8* %464, i8* %465, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i32 %469)
  %471 = load i8*, i8** %4, align 8
  %472 = sext i32 %470 to i64
  %473 = getelementptr inbounds i8, i8* %471, i64 %472
  store i8* %473, i8** %4, align 8
  %474 = load i8*, i8** %3, align 8
  %475 = load i8*, i8** %4, align 8
  %476 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %477 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %476, i32 0, i32 4
  %478 = load i64, i64* %477, align 8
  %479 = trunc i64 %478 to i32
  %480 = call i32 @ocrdma_add_stat(i8* %474, i8* %475, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i32 %479)
  %481 = load i8*, i8** %4, align 8
  %482 = sext i32 %480 to i64
  %483 = getelementptr inbounds i8, i8* %481, i64 %482
  store i8* %483, i8** %4, align 8
  %484 = load i8*, i8** %3, align 8
  %485 = load i8*, i8** %4, align 8
  %486 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %487 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %486, i32 0, i32 3
  %488 = load i64, i64* %487, align 8
  %489 = trunc i64 %488 to i32
  %490 = call i32 @ocrdma_add_stat(i8* %484, i8* %485, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i32 %489)
  %491 = load i8*, i8** %4, align 8
  %492 = sext i32 %490 to i64
  %493 = getelementptr inbounds i8, i8* %491, i64 %492
  store i8* %493, i8** %4, align 8
  %494 = load i8*, i8** %3, align 8
  %495 = load i8*, i8** %4, align 8
  %496 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %497 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %496, i32 0, i32 2
  %498 = load i64, i64* %497, align 8
  %499 = trunc i64 %498 to i32
  %500 = call i32 @ocrdma_add_stat(i8* %494, i8* %495, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i32 %499)
  %501 = load i8*, i8** %4, align 8
  %502 = sext i32 %500 to i64
  %503 = getelementptr inbounds i8, i8* %501, i64 %502
  store i8* %503, i8** %4, align 8
  %504 = load i8*, i8** %3, align 8
  %505 = load i8*, i8** %4, align 8
  %506 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %507 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = trunc i64 %508 to i32
  %510 = call i32 @ocrdma_add_stat(i8* %504, i8* %505, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i32 %509)
  %511 = load i8*, i8** %4, align 8
  %512 = sext i32 %510 to i64
  %513 = getelementptr inbounds i8, i8* %511, i64 %512
  store i8* %513, i8** %4, align 8
  %514 = load i8*, i8** %3, align 8
  %515 = load i8*, i8** %4, align 8
  %516 = load %struct.ocrdma_rsrc_stats*, %struct.ocrdma_rsrc_stats** %6, align 8
  %517 = getelementptr inbounds %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = trunc i64 %518 to i32
  %520 = call i32 @ocrdma_add_stat(i8* %514, i8* %515, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i32 %519)
  %521 = load i8*, i8** %4, align 8
  %522 = sext i32 %520 to i64
  %523 = getelementptr inbounds i8, i8* %521, i64 %522
  store i8* %523, i8** %4, align 8
  %524 = load i8*, i8** %3, align 8
  ret i8* %524
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ocrdma_add_stat(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
