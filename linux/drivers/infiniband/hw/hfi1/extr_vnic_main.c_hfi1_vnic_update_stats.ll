; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_vport_info = type { i64, i64, %struct.opa_vnic_stats*, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.opa_vnic_stats = type { %struct.rtnl_link_stats64, i64, i64, %struct.TYPE_3__, i64, i64, i64 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@tx_grp = common dso_local global i32 0, align 4
@rx_grp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_vnic_vport_info*, %struct.opa_vnic_stats*)* @hfi1_vnic_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_vnic_update_stats(%struct.hfi1_vnic_vport_info* %0, %struct.opa_vnic_stats* %1) #0 {
  %3 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %4 = alloca %struct.opa_vnic_stats*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.opa_vnic_stats*, align 8
  %8 = alloca %struct.rtnl_link_stats64*, align 8
  %9 = alloca %struct.opa_vnic_stats*, align 8
  %10 = alloca %struct.rtnl_link_stats64*, align 8
  store %struct.hfi1_vnic_vport_info* %0, %struct.hfi1_vnic_vport_info** %3, align 8
  store %struct.opa_vnic_stats* %1, %struct.opa_vnic_stats** %4, align 8
  %11 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %82, %2
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %14
  %21 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %21, i32 0, i32 2
  %23 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %23, i64 %24
  store %struct.opa_vnic_stats* %25, %struct.opa_vnic_stats** %7, align 8
  %26 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %26, i32 0, i32 2
  %28 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %28, i64 %29
  %31 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %30, i32 0, i32 0
  store %struct.rtnl_link_stats64* %31, %struct.rtnl_link_stats64** %8, align 8
  %32 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %33 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %36 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %34
  store i64 %39, i64* %37, align 8
  %40 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %41 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %44 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %42
  store i64 %47, i64* %45, align 8
  %48 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %7, align 8
  %49 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %52 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %7, align 8
  %56 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %59 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %63 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %7, align 8
  %64 = load i32, i32* @tx_grp, align 4
  %65 = call i32 @SUM_GRP_COUNTERS(%struct.opa_vnic_stats* %62, %struct.opa_vnic_stats* %63, i32 %64)
  %66 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %67 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %66, i32 0, i32 10
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %70 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %70, i32 0, i32 10
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %68
  store i64 %73, i64* %71, align 8
  %74 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %75 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %78 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %76
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %20
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %14

85:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %86

86:                                               ; preds = %161, %85
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %89 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %164

92:                                               ; preds = %86
  %93 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %94 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %93, i32 0, i32 2
  %95 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %95, i64 %96
  store %struct.opa_vnic_stats* %97, %struct.opa_vnic_stats** %9, align 8
  %98 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %99 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %98, i32 0, i32 2
  %100 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %100, i64 %101
  %103 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %102, i32 0, i32 0
  store %struct.rtnl_link_stats64* %103, %struct.rtnl_link_stats64** %10, align 8
  %104 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %105 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %108 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %106
  store i64 %111, i64* %109, align 8
  %112 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %113 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %112, i32 0, i32 11
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %116 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %116, i32 0, i32 11
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %114
  store i64 %119, i64* %117, align 8
  %120 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %9, align 8
  %121 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %124 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %9, align 8
  %128 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %131 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %9, align 8
  %135 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %138 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  %141 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %142 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %9, align 8
  %143 = load i32, i32* @rx_grp, align 4
  %144 = call i32 @SUM_GRP_COUNTERS(%struct.opa_vnic_stats* %141, %struct.opa_vnic_stats* %142, i32 %143)
  %145 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %146 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %149 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, %147
  store i64 %152, i64* %150, align 8
  %153 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %154 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %157 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, %155
  store i64 %160, i64* %158, align 8
  br label %161

161:                                              ; preds = %92
  %162 = load i64, i64* %6, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %6, align 8
  br label %86

164:                                              ; preds = %86
  %165 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %166 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %170 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %168, %172
  %174 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %175 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %173, %176
  %178 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %179 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %183 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %183, i32 0, i32 6
  store i64 %181, i64* %184, align 8
  %185 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %186 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %190 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %190, i32 0, i32 5
  store i64 %188, i64* %191, align 8
  %192 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %193 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %197 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %197, i32 0, i32 11
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %195, %199
  %201 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %202 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %200, %203
  %205 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %206 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %204, %207
  %209 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %210 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %208, %211
  %213 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %214 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %214, i32 0, i32 1
  store i64 %212, i64* %215, align 8
  %216 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %217 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %221 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %221, i32 0, i32 0
  store i64 %219, i64* %222, align 8
  %223 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %224 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %224, i32 0, i32 10
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.net_device*, %struct.net_device** %5, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 12
  store i64 %226, i64* %229, align 8
  %230 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %231 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %231, i32 0, i32 9
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.net_device*, %struct.net_device** %5, align 8
  %235 = getelementptr inbounds %struct.net_device, %struct.net_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 11
  store i64 %233, i64* %236, align 8
  %237 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %238 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %238, i32 0, i32 8
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.net_device*, %struct.net_device** %5, align 8
  %242 = getelementptr inbounds %struct.net_device, %struct.net_device* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 10
  store i64 %240, i64* %243, align 8
  %244 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %245 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %245, i32 0, i32 7
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.net_device*, %struct.net_device** %5, align 8
  %249 = getelementptr inbounds %struct.net_device, %struct.net_device* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 9
  store i64 %247, i64* %250, align 8
  %251 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %252 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %252, i32 0, i32 6
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.net_device*, %struct.net_device** %5, align 8
  %256 = getelementptr inbounds %struct.net_device, %struct.net_device* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 8
  store i64 %254, i64* %257, align 8
  %258 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %259 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %259, i32 0, i32 5
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.net_device*, %struct.net_device** %5, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 7
  store i64 %261, i64* %264, align 8
  %265 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %266 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.net_device*, %struct.net_device** %5, align 8
  %270 = getelementptr inbounds %struct.net_device, %struct.net_device* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 6
  store i64 %268, i64* %271, align 8
  %272 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %273 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.net_device*, %struct.net_device** %5, align 8
  %277 = getelementptr inbounds %struct.net_device, %struct.net_device* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 5
  store i64 %275, i64* %278, align 8
  %279 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %280 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.net_device*, %struct.net_device** %5, align 8
  %284 = getelementptr inbounds %struct.net_device, %struct.net_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 4
  store i64 %282, i64* %285, align 8
  %286 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %287 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.net_device*, %struct.net_device** %5, align 8
  %291 = getelementptr inbounds %struct.net_device, %struct.net_device* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 3
  store i32 %289, i32* %292, align 8
  %293 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %294 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %297 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = add nsw i64 %295, %298
  %300 = load %struct.net_device*, %struct.net_device** %5, align 8
  %301 = getelementptr inbounds %struct.net_device, %struct.net_device* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 2
  store i64 %299, i64* %302, align 8
  %303 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %304 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.net_device*, %struct.net_device** %5, align 8
  %308 = getelementptr inbounds %struct.net_device, %struct.net_device* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 1
  store i64 %306, i64* %309, align 8
  %310 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %4, align 8
  %311 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.net_device*, %struct.net_device** %5, align 8
  %315 = getelementptr inbounds %struct.net_device, %struct.net_device* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  store i64 %313, i64* %316, align 8
  ret void
}

declare dso_local i32 @SUM_GRP_COUNTERS(%struct.opa_vnic_stats*, %struct.opa_vnic_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
