; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_vsi_pestat = type { %struct.TYPE_2__*, %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats_offsets }
%struct.TYPE_2__ = type { i64 }
%struct.i40iw_dev_hw_stats = type { i32*, i32* }
%struct.i40iw_dev_hw_stats_offsets = type { i64*, i64* }

@I40IW_HW_STAT_INDEX_IP4RXDISCARD = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4RXTRUNC = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4TXNOROUTE = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6RXDISCARD = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6RXTRUNC = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6TXNOROUTE = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_TCPRTXSEG = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_TCPRXOPTERR = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_TCPRXPROTOERR = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4RXOCTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4RXPKTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4RXFRAGS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4RXMCPKTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4TXOCTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4TXPKTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4TXFRAGS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP4TXMCPKTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6RXOCTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6RXPKTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6RXFRAGS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6RXMCPKTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6TXOCTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6TXPKTS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_IP6TXFRAGS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_TCPRXSEGS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_TCPTXSEG = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_RDMARXRDS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_RDMARXSNDS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_RDMARXWRS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_RDMATXRDS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_RDMATXSNDS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_RDMATXWRS = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_RDMAVBND = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_RDMAVINV = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_MAX_64 = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_MAX_32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_hw_stats_init(%struct.i40iw_vsi_pestat* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40iw_vsi_pestat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i40iw_dev_hw_stats_offsets*, align 8
  %10 = alloca %struct.i40iw_dev_hw_stats*, align 8
  store %struct.i40iw_vsi_pestat* %0, %struct.i40iw_vsi_pestat** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %11, i32 0, i32 2
  store %struct.i40iw_dev_hw_stats_offsets* %12, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %13 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %14 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %13, i32 0, i32 1
  store %struct.i40iw_dev_hw_stats* %14, %struct.i40iw_dev_hw_stats** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %265

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @I40E_GLPES_PFIP4RXDISCARD(i32 %18)
  %20 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %21 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXDISCARD, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %19, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @I40E_GLPES_PFIP4RXTRUNC(i32 %25)
  %27 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %28 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXTRUNC, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 %26, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @I40E_GLPES_PFIP4TXNOROUTE(i32 %32)
  %34 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %35 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXNOROUTE, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %33, i64* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @I40E_GLPES_PFIP6RXDISCARD(i32 %39)
  %41 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %42 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXDISCARD, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %40, i64* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @I40E_GLPES_PFIP6RXTRUNC(i32 %46)
  %48 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %49 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXTRUNC, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @I40E_GLPES_PFIP6TXNOROUTE(i32 %53)
  %55 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %56 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXNOROUTE, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @I40E_GLPES_PFTCPRTXSEG(i32 %60)
  %62 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %63 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPRTXSEG, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %61, i64* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @I40E_GLPES_PFTCPRXOPTERR(i32 %67)
  %69 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %70 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPRXOPTERR, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %68, i64* %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @I40E_GLPES_PFTCPRXPROTOERR(i32 %74)
  %76 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %77 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPRXPROTOERR, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %75, i64* %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @I40E_GLPES_PFIP4RXOCTSLO(i32 %81)
  %83 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %84 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXOCTS, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %82, i64* %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @I40E_GLPES_PFIP4RXPKTSLO(i32 %88)
  %90 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %91 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXPKTS, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %89, i64* %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @I40E_GLPES_PFIP4RXFRAGSLO(i32 %95)
  %97 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %98 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXFRAGS, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64 %96, i64* %101, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @I40E_GLPES_PFIP4RXMCPKTSLO(i32 %102)
  %104 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %105 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXMCPKTS, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 %103, i64* %108, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @I40E_GLPES_PFIP4TXOCTSLO(i32 %109)
  %111 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %112 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXOCTS, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %110, i64* %115, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i64 @I40E_GLPES_PFIP4TXPKTSLO(i32 %116)
  %118 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %119 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXPKTS, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  store i64 %117, i64* %122, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @I40E_GLPES_PFIP4TXFRAGSLO(i32 %123)
  %125 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %126 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXFRAGS, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %124, i64* %129, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i64 @I40E_GLPES_PFIP4TXMCPKTSLO(i32 %130)
  %132 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %133 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXMCPKTS, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 %131, i64* %136, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i64 @I40E_GLPES_PFIP6RXOCTSLO(i32 %137)
  %139 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %140 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXOCTS, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64 %138, i64* %143, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i64 @I40E_GLPES_PFIP6RXPKTSLO(i32 %144)
  %146 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %147 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXPKTS, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 %145, i64* %150, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i64 @I40E_GLPES_PFIP6RXFRAGSLO(i32 %151)
  %153 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %154 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXFRAGS, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  store i64 %152, i64* %157, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i64 @I40E_GLPES_PFIP6RXMCPKTSLO(i32 %158)
  %160 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %161 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXMCPKTS, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  store i64 %159, i64* %164, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i64 @I40E_GLPES_PFIP6TXOCTSLO(i32 %165)
  %167 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %168 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXOCTS, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  store i64 %166, i64* %171, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i8* @I40E_GLPES_PFIP6TXPKTSLO(i32 %172)
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %176 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %175, i32 0, i32 1
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXPKTS, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 %174, i64* %179, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i8* @I40E_GLPES_PFIP6TXPKTSLO(i32 %180)
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %184 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXPKTS, align 8
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  store i64 %182, i64* %187, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i64 @I40E_GLPES_PFIP6TXFRAGSLO(i32 %188)
  %190 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %191 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXFRAGS, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  store i64 %189, i64* %194, align 8
  %195 = load i32, i32* %5, align 4
  %196 = call i64 @I40E_GLPES_PFTCPRXSEGSLO(i32 %195)
  %197 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %198 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %197, i32 0, i32 1
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPRXSEGS, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  store i64 %196, i64* %201, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i64 @I40E_GLPES_PFTCPTXSEGLO(i32 %202)
  %204 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %205 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %204, i32 0, i32 1
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPTXSEG, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 %203, i64* %208, align 8
  %209 = load i32, i32* %5, align 4
  %210 = call i64 @I40E_GLPES_PFRDMARXRDSLO(i32 %209)
  %211 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %212 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMARXRDS, align 8
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  store i64 %210, i64* %215, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i64 @I40E_GLPES_PFRDMARXSNDSLO(i32 %216)
  %218 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %219 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %218, i32 0, i32 1
  %220 = load i64*, i64** %219, align 8
  %221 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMARXSNDS, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  store i64 %217, i64* %222, align 8
  %223 = load i32, i32* %5, align 4
  %224 = call i64 @I40E_GLPES_PFRDMARXWRSLO(i32 %223)
  %225 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %226 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMARXWRS, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  store i64 %224, i64* %229, align 8
  %230 = load i32, i32* %5, align 4
  %231 = call i64 @I40E_GLPES_PFRDMATXRDSLO(i32 %230)
  %232 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %233 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %232, i32 0, i32 1
  %234 = load i64*, i64** %233, align 8
  %235 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMATXRDS, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  store i64 %231, i64* %236, align 8
  %237 = load i32, i32* %5, align 4
  %238 = call i64 @I40E_GLPES_PFRDMATXSNDSLO(i32 %237)
  %239 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %240 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %239, i32 0, i32 1
  %241 = load i64*, i64** %240, align 8
  %242 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMATXSNDS, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  store i64 %238, i64* %243, align 8
  %244 = load i32, i32* %5, align 4
  %245 = call i64 @I40E_GLPES_PFRDMATXWRSLO(i32 %244)
  %246 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %247 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMATXWRS, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  store i64 %245, i64* %250, align 8
  %251 = load i32, i32* %5, align 4
  %252 = call i64 @I40E_GLPES_PFRDMAVBNDLO(i32 %251)
  %253 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %254 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %253, i32 0, i32 1
  %255 = load i64*, i64** %254, align 8
  %256 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMAVBND, align 8
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  store i64 %252, i64* %257, align 8
  %258 = load i32, i32* %5, align 4
  %259 = call i64 @I40E_GLPES_PFRDMAVINVLO(i32 %258)
  %260 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %261 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMAVINV, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  store i64 %259, i64* %264, align 8
  br label %513

265:                                              ; preds = %3
  %266 = load i32, i32* %5, align 4
  %267 = call i64 @I40E_GLPES_VFIP4RXDISCARD(i32 %266)
  %268 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %269 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXDISCARD, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  store i64 %267, i64* %272, align 8
  %273 = load i32, i32* %5, align 4
  %274 = call i64 @I40E_GLPES_VFIP4RXTRUNC(i32 %273)
  %275 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %276 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXTRUNC, align 8
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  store i64 %274, i64* %279, align 8
  %280 = load i32, i32* %5, align 4
  %281 = call i64 @I40E_GLPES_VFIP4TXNOROUTE(i32 %280)
  %282 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %283 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXNOROUTE, align 8
  %286 = getelementptr inbounds i64, i64* %284, i64 %285
  store i64 %281, i64* %286, align 8
  %287 = load i32, i32* %5, align 4
  %288 = call i64 @I40E_GLPES_VFIP6RXDISCARD(i32 %287)
  %289 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %290 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXDISCARD, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  store i64 %288, i64* %293, align 8
  %294 = load i32, i32* %5, align 4
  %295 = call i64 @I40E_GLPES_VFIP6RXTRUNC(i32 %294)
  %296 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %297 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %296, i32 0, i32 0
  %298 = load i64*, i64** %297, align 8
  %299 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXTRUNC, align 8
  %300 = getelementptr inbounds i64, i64* %298, i64 %299
  store i64 %295, i64* %300, align 8
  %301 = load i32, i32* %5, align 4
  %302 = call i64 @I40E_GLPES_VFIP6TXNOROUTE(i32 %301)
  %303 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %304 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %303, i32 0, i32 0
  %305 = load i64*, i64** %304, align 8
  %306 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXNOROUTE, align 8
  %307 = getelementptr inbounds i64, i64* %305, i64 %306
  store i64 %302, i64* %307, align 8
  %308 = load i32, i32* %5, align 4
  %309 = call i64 @I40E_GLPES_VFTCPRTXSEG(i32 %308)
  %310 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %311 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %310, i32 0, i32 0
  %312 = load i64*, i64** %311, align 8
  %313 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPRTXSEG, align 8
  %314 = getelementptr inbounds i64, i64* %312, i64 %313
  store i64 %309, i64* %314, align 8
  %315 = load i32, i32* %5, align 4
  %316 = call i64 @I40E_GLPES_VFTCPRXOPTERR(i32 %315)
  %317 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %318 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %317, i32 0, i32 0
  %319 = load i64*, i64** %318, align 8
  %320 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPRXOPTERR, align 8
  %321 = getelementptr inbounds i64, i64* %319, i64 %320
  store i64 %316, i64* %321, align 8
  %322 = load i32, i32* %5, align 4
  %323 = call i64 @I40E_GLPES_VFTCPRXPROTOERR(i32 %322)
  %324 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %325 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %324, i32 0, i32 0
  %326 = load i64*, i64** %325, align 8
  %327 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPRXPROTOERR, align 8
  %328 = getelementptr inbounds i64, i64* %326, i64 %327
  store i64 %323, i64* %328, align 8
  %329 = load i32, i32* %5, align 4
  %330 = call i64 @I40E_GLPES_VFIP4RXOCTSLO(i32 %329)
  %331 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %332 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %331, i32 0, i32 1
  %333 = load i64*, i64** %332, align 8
  %334 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXOCTS, align 8
  %335 = getelementptr inbounds i64, i64* %333, i64 %334
  store i64 %330, i64* %335, align 8
  %336 = load i32, i32* %5, align 4
  %337 = call i64 @I40E_GLPES_VFIP4RXPKTSLO(i32 %336)
  %338 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %339 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %338, i32 0, i32 1
  %340 = load i64*, i64** %339, align 8
  %341 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXPKTS, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  store i64 %337, i64* %342, align 8
  %343 = load i32, i32* %5, align 4
  %344 = call i64 @I40E_GLPES_VFIP4RXFRAGSLO(i32 %343)
  %345 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %346 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %345, i32 0, i32 1
  %347 = load i64*, i64** %346, align 8
  %348 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXFRAGS, align 8
  %349 = getelementptr inbounds i64, i64* %347, i64 %348
  store i64 %344, i64* %349, align 8
  %350 = load i32, i32* %5, align 4
  %351 = call i64 @I40E_GLPES_VFIP4RXMCPKTSLO(i32 %350)
  %352 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %353 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %352, i32 0, i32 1
  %354 = load i64*, i64** %353, align 8
  %355 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4RXMCPKTS, align 8
  %356 = getelementptr inbounds i64, i64* %354, i64 %355
  store i64 %351, i64* %356, align 8
  %357 = load i32, i32* %5, align 4
  %358 = call i64 @I40E_GLPES_VFIP4TXOCTSLO(i32 %357)
  %359 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %360 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %359, i32 0, i32 1
  %361 = load i64*, i64** %360, align 8
  %362 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXOCTS, align 8
  %363 = getelementptr inbounds i64, i64* %361, i64 %362
  store i64 %358, i64* %363, align 8
  %364 = load i32, i32* %5, align 4
  %365 = call i64 @I40E_GLPES_VFIP4TXPKTSLO(i32 %364)
  %366 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %367 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %366, i32 0, i32 1
  %368 = load i64*, i64** %367, align 8
  %369 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXPKTS, align 8
  %370 = getelementptr inbounds i64, i64* %368, i64 %369
  store i64 %365, i64* %370, align 8
  %371 = load i32, i32* %5, align 4
  %372 = call i64 @I40E_GLPES_VFIP4TXFRAGSLO(i32 %371)
  %373 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %374 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %373, i32 0, i32 1
  %375 = load i64*, i64** %374, align 8
  %376 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXFRAGS, align 8
  %377 = getelementptr inbounds i64, i64* %375, i64 %376
  store i64 %372, i64* %377, align 8
  %378 = load i32, i32* %5, align 4
  %379 = call i64 @I40E_GLPES_VFIP4TXMCPKTSLO(i32 %378)
  %380 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %381 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %380, i32 0, i32 1
  %382 = load i64*, i64** %381, align 8
  %383 = load i64, i64* @I40IW_HW_STAT_INDEX_IP4TXMCPKTS, align 8
  %384 = getelementptr inbounds i64, i64* %382, i64 %383
  store i64 %379, i64* %384, align 8
  %385 = load i32, i32* %5, align 4
  %386 = call i64 @I40E_GLPES_VFIP6RXOCTSLO(i32 %385)
  %387 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %388 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %387, i32 0, i32 1
  %389 = load i64*, i64** %388, align 8
  %390 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXOCTS, align 8
  %391 = getelementptr inbounds i64, i64* %389, i64 %390
  store i64 %386, i64* %391, align 8
  %392 = load i32, i32* %5, align 4
  %393 = call i64 @I40E_GLPES_VFIP6RXPKTSLO(i32 %392)
  %394 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %395 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %394, i32 0, i32 1
  %396 = load i64*, i64** %395, align 8
  %397 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXPKTS, align 8
  %398 = getelementptr inbounds i64, i64* %396, i64 %397
  store i64 %393, i64* %398, align 8
  %399 = load i32, i32* %5, align 4
  %400 = call i64 @I40E_GLPES_VFIP6RXFRAGSLO(i32 %399)
  %401 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %402 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %401, i32 0, i32 1
  %403 = load i64*, i64** %402, align 8
  %404 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXFRAGS, align 8
  %405 = getelementptr inbounds i64, i64* %403, i64 %404
  store i64 %400, i64* %405, align 8
  %406 = load i32, i32* %5, align 4
  %407 = call i64 @I40E_GLPES_VFIP6RXMCPKTSLO(i32 %406)
  %408 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %409 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %408, i32 0, i32 1
  %410 = load i64*, i64** %409, align 8
  %411 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6RXMCPKTS, align 8
  %412 = getelementptr inbounds i64, i64* %410, i64 %411
  store i64 %407, i64* %412, align 8
  %413 = load i32, i32* %5, align 4
  %414 = call i64 @I40E_GLPES_VFIP6TXOCTSLO(i32 %413)
  %415 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %416 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %415, i32 0, i32 1
  %417 = load i64*, i64** %416, align 8
  %418 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXOCTS, align 8
  %419 = getelementptr inbounds i64, i64* %417, i64 %418
  store i64 %414, i64* %419, align 8
  %420 = load i32, i32* %5, align 4
  %421 = call i8* @I40E_GLPES_VFIP6TXPKTSLO(i32 %420)
  %422 = ptrtoint i8* %421 to i64
  %423 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %424 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %423, i32 0, i32 1
  %425 = load i64*, i64** %424, align 8
  %426 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXPKTS, align 8
  %427 = getelementptr inbounds i64, i64* %425, i64 %426
  store i64 %422, i64* %427, align 8
  %428 = load i32, i32* %5, align 4
  %429 = call i8* @I40E_GLPES_VFIP6TXPKTSLO(i32 %428)
  %430 = ptrtoint i8* %429 to i64
  %431 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %432 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %431, i32 0, i32 1
  %433 = load i64*, i64** %432, align 8
  %434 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXPKTS, align 8
  %435 = getelementptr inbounds i64, i64* %433, i64 %434
  store i64 %430, i64* %435, align 8
  %436 = load i32, i32* %5, align 4
  %437 = call i64 @I40E_GLPES_VFIP6TXFRAGSLO(i32 %436)
  %438 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %439 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %438, i32 0, i32 1
  %440 = load i64*, i64** %439, align 8
  %441 = load i64, i64* @I40IW_HW_STAT_INDEX_IP6TXFRAGS, align 8
  %442 = getelementptr inbounds i64, i64* %440, i64 %441
  store i64 %437, i64* %442, align 8
  %443 = load i32, i32* %5, align 4
  %444 = call i64 @I40E_GLPES_VFTCPRXSEGSLO(i32 %443)
  %445 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %446 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %445, i32 0, i32 1
  %447 = load i64*, i64** %446, align 8
  %448 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPRXSEGS, align 8
  %449 = getelementptr inbounds i64, i64* %447, i64 %448
  store i64 %444, i64* %449, align 8
  %450 = load i32, i32* %5, align 4
  %451 = call i64 @I40E_GLPES_VFTCPTXSEGLO(i32 %450)
  %452 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %453 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %452, i32 0, i32 1
  %454 = load i64*, i64** %453, align 8
  %455 = load i64, i64* @I40IW_HW_STAT_INDEX_TCPTXSEG, align 8
  %456 = getelementptr inbounds i64, i64* %454, i64 %455
  store i64 %451, i64* %456, align 8
  %457 = load i32, i32* %5, align 4
  %458 = call i64 @I40E_GLPES_VFRDMARXRDSLO(i32 %457)
  %459 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %460 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %459, i32 0, i32 1
  %461 = load i64*, i64** %460, align 8
  %462 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMARXRDS, align 8
  %463 = getelementptr inbounds i64, i64* %461, i64 %462
  store i64 %458, i64* %463, align 8
  %464 = load i32, i32* %5, align 4
  %465 = call i64 @I40E_GLPES_VFRDMARXSNDSLO(i32 %464)
  %466 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %467 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %466, i32 0, i32 1
  %468 = load i64*, i64** %467, align 8
  %469 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMARXSNDS, align 8
  %470 = getelementptr inbounds i64, i64* %468, i64 %469
  store i64 %465, i64* %470, align 8
  %471 = load i32, i32* %5, align 4
  %472 = call i64 @I40E_GLPES_VFRDMARXWRSLO(i32 %471)
  %473 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %474 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %473, i32 0, i32 1
  %475 = load i64*, i64** %474, align 8
  %476 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMARXWRS, align 8
  %477 = getelementptr inbounds i64, i64* %475, i64 %476
  store i64 %472, i64* %477, align 8
  %478 = load i32, i32* %5, align 4
  %479 = call i64 @I40E_GLPES_VFRDMATXRDSLO(i32 %478)
  %480 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %481 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %480, i32 0, i32 1
  %482 = load i64*, i64** %481, align 8
  %483 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMATXRDS, align 8
  %484 = getelementptr inbounds i64, i64* %482, i64 %483
  store i64 %479, i64* %484, align 8
  %485 = load i32, i32* %5, align 4
  %486 = call i64 @I40E_GLPES_VFRDMATXSNDSLO(i32 %485)
  %487 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %488 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %487, i32 0, i32 1
  %489 = load i64*, i64** %488, align 8
  %490 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMATXSNDS, align 8
  %491 = getelementptr inbounds i64, i64* %489, i64 %490
  store i64 %486, i64* %491, align 8
  %492 = load i32, i32* %5, align 4
  %493 = call i64 @I40E_GLPES_VFRDMATXWRSLO(i32 %492)
  %494 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %495 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %494, i32 0, i32 1
  %496 = load i64*, i64** %495, align 8
  %497 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMATXWRS, align 8
  %498 = getelementptr inbounds i64, i64* %496, i64 %497
  store i64 %493, i64* %498, align 8
  %499 = load i32, i32* %5, align 4
  %500 = call i64 @I40E_GLPES_VFRDMAVBNDLO(i32 %499)
  %501 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %502 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %501, i32 0, i32 1
  %503 = load i64*, i64** %502, align 8
  %504 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMAVBND, align 8
  %505 = getelementptr inbounds i64, i64* %503, i64 %504
  store i64 %500, i64* %505, align 8
  %506 = load i32, i32* %5, align 4
  %507 = call i64 @I40E_GLPES_VFRDMAVINVLO(i32 %506)
  %508 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %509 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %508, i32 0, i32 1
  %510 = load i64*, i64** %509, align 8
  %511 = load i64, i64* @I40IW_HW_STAT_INDEX_RDMAVINV, align 8
  %512 = getelementptr inbounds i64, i64* %510, i64 %511
  store i64 %507, i64* %512, align 8
  br label %513

513:                                              ; preds = %265, %17
  store i64 0, i64* %8, align 8
  br label %514

514:                                              ; preds = %538, %513
  %515 = load i64, i64* %8, align 8
  %516 = load i64, i64* @I40IW_HW_STAT_INDEX_MAX_64, align 8
  %517 = icmp ult i64 %515, %516
  br i1 %517, label %518, label %541

518:                                              ; preds = %514
  %519 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %520 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %519, i32 0, i32 1
  %521 = load i64*, i64** %520, align 8
  %522 = load i64, i64* %8, align 8
  %523 = getelementptr inbounds i64, i64* %521, i64 %522
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %7, align 8
  %525 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %526 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %525, i32 0, i32 0
  %527 = load %struct.TYPE_2__*, %struct.TYPE_2__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* %7, align 8
  %531 = add i64 %529, %530
  %532 = call i32 @readq(i64 %531)
  %533 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %10, align 8
  %534 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %533, i32 0, i32 1
  %535 = load i32*, i32** %534, align 8
  %536 = load i64, i64* %8, align 8
  %537 = getelementptr inbounds i32, i32* %535, i64 %536
  store i32 %532, i32* %537, align 4
  br label %538

538:                                              ; preds = %518
  %539 = load i64, i64* %8, align 8
  %540 = add i64 %539, 1
  store i64 %540, i64* %8, align 8
  br label %514

541:                                              ; preds = %514
  store i64 0, i64* %8, align 8
  br label %542

542:                                              ; preds = %563, %541
  %543 = load i64, i64* %8, align 8
  %544 = load i64, i64* @I40IW_HW_STAT_INDEX_MAX_32, align 8
  %545 = icmp ult i64 %543, %544
  br i1 %545, label %546, label %566

546:                                              ; preds = %542
  %547 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %9, align 8
  %548 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %547, i32 0, i32 0
  %549 = load i64*, i64** %548, align 8
  %550 = load i64, i64* %8, align 8
  %551 = getelementptr inbounds i64, i64* %549, i64 %550
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %7, align 8
  %553 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %554 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %553, i32 0, i32 0
  %555 = load %struct.TYPE_2__*, %struct.TYPE_2__** %554, align 8
  %556 = load i64, i64* %7, align 8
  %557 = call i32 @i40iw_rd32(%struct.TYPE_2__* %555, i64 %556)
  %558 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %10, align 8
  %559 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %558, i32 0, i32 0
  %560 = load i32*, i32** %559, align 8
  %561 = load i64, i64* %8, align 8
  %562 = getelementptr inbounds i32, i32* %560, i64 %561
  store i32 %557, i32* %562, align 4
  br label %563

563:                                              ; preds = %546
  %564 = load i64, i64* %8, align 8
  %565 = add i64 %564, 1
  store i64 %565, i64* %8, align 8
  br label %542

566:                                              ; preds = %542
  ret void
}

declare dso_local i64 @I40E_GLPES_PFIP4RXDISCARD(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4RXTRUNC(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4TXNOROUTE(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6RXDISCARD(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6RXTRUNC(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6TXNOROUTE(i32) #1

declare dso_local i64 @I40E_GLPES_PFTCPRTXSEG(i32) #1

declare dso_local i64 @I40E_GLPES_PFTCPRXOPTERR(i32) #1

declare dso_local i64 @I40E_GLPES_PFTCPRXPROTOERR(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4RXOCTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4RXPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4RXFRAGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4RXMCPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4TXOCTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4TXPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4TXFRAGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP4TXMCPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6RXOCTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6RXPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6RXFRAGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6RXMCPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6TXOCTSLO(i32) #1

declare dso_local i8* @I40E_GLPES_PFIP6TXPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFIP6TXFRAGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFTCPRXSEGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFTCPTXSEGLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFRDMARXRDSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFRDMARXSNDSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFRDMARXWRSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFRDMATXRDSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFRDMATXSNDSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFRDMATXWRSLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFRDMAVBNDLO(i32) #1

declare dso_local i64 @I40E_GLPES_PFRDMAVINVLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4RXDISCARD(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4RXTRUNC(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4TXNOROUTE(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6RXDISCARD(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6RXTRUNC(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6TXNOROUTE(i32) #1

declare dso_local i64 @I40E_GLPES_VFTCPRTXSEG(i32) #1

declare dso_local i64 @I40E_GLPES_VFTCPRXOPTERR(i32) #1

declare dso_local i64 @I40E_GLPES_VFTCPRXPROTOERR(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4RXOCTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4RXPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4RXFRAGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4RXMCPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4TXOCTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4TXPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4TXFRAGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP4TXMCPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6RXOCTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6RXPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6RXFRAGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6RXMCPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6TXOCTSLO(i32) #1

declare dso_local i8* @I40E_GLPES_VFIP6TXPKTSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFIP6TXFRAGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFTCPRXSEGSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFTCPTXSEGLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFRDMARXRDSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFRDMARXSNDSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFRDMARXWRSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFRDMATXRDSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFRDMATXSNDSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFRDMATXWRSLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFRDMAVBNDLO(i32) #1

declare dso_local i64 @I40E_GLPES_VFRDMAVINVLO(i32) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @i40iw_rd32(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
