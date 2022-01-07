; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_exec_cqp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_exec_cqp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32* }
%struct.cqp_commands_info = type { i64, %struct.TYPE_61__, i32 }
%struct.TYPE_61__ = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { %struct.TYPE_59__, %struct.TYPE_58__, %struct.TYPE_57__, %struct.TYPE_55__, %struct.TYPE_54__, %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_49__, %struct.TYPE_48__, %struct.TYPE_47__, %struct.TYPE_46__, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_42__, %struct.TYPE_41__, %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_68__, %struct.TYPE_67__, %struct.TYPE_66__, %struct.TYPE_65__, %struct.TYPE_64__, %struct.TYPE_63__, %struct.TYPE_62__, %struct.TYPE_56__, %struct.TYPE_45__ }
%struct.TYPE_59__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_58__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_57__ = type { i32, i32, i32 }
%struct.TYPE_55__ = type { i32, i32, i32 }
%struct.TYPE_54__ = type { %struct.TYPE_53__, i32, %struct.TYPE_52__* }
%struct.TYPE_53__ = type { i32, i32 }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_51__ = type { i32, i32, i32 }
%struct.TYPE_50__ = type { i32, i32, i32 }
%struct.TYPE_49__ = type { i32, i32, i32 }
%struct.TYPE_48__ = type { i32, i32, i32 }
%struct.TYPE_47__ = type { i32, i32, i32 }
%struct.TYPE_46__ = type { i32, i32, i32, i32 }
%struct.TYPE_44__ = type { i32, i32, i32 }
%struct.TYPE_43__ = type { i32, i32, i32 }
%struct.TYPE_42__ = type { i32, i32, i32 }
%struct.TYPE_41__ = type { i32, i32, i32, i32 }
%struct.TYPE_40__ = type { i32, i32, i32 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32, i32 }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.TYPE_68__ = type { i32, i32, i32 }
%struct.TYPE_67__ = type { i32, i32 }
%struct.TYPE_66__ = type { i32, i32 }
%struct.TYPE_65__ = type { i32, i32 }
%struct.TYPE_64__ = type { i32, i32, i32 }
%struct.TYPE_63__ = type { i32, i32, i32 }
%struct.TYPE_62__ = type { i32, i32 }
%struct.TYPE_56__ = type { i32, i32 }
%struct.TYPE_45__ = type { i32, i32, i32, i32 }
%struct.i40iw_dma_mem = type { i32, i32 }

@I40IW_CQP_WAIT_EVENT = common dso_local global i32 0, align 4
@I40IW_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.cqp_commands_info*)* @i40iw_exec_cqp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_exec_cqp_cmd(%struct.i40iw_sc_dev* %0, %struct.cqp_commands_info* %1) #0 {
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.cqp_commands_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_dma_mem, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %3, align 8
  store %struct.cqp_commands_info* %1, %struct.cqp_commands_info** %4, align 8
  %7 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %11 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %17 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  switch i64 %18, label %718 [
    i64 145, label %19
    i64 151, label %48
    i64 155, label %65
    i64 146, label %82
    i64 143, label %105
    i64 152, label %127
    i64 156, label %144
    i64 154, label %161
    i64 157, label %178
    i64 140, label %200
    i64 133, label %222
    i64 132, label %244
    i64 149, label %266
    i64 148, label %289
    i64 136, label %306
    i64 135, label %328
    i64 153, label %357
    i64 138, label %379
    i64 147, label %401
    i64 137, label %423
    i64 134, label %452
    i64 144, label %474
    i64 158, label %496
    i64 141, label %518
    i64 128, label %540
    i64 142, label %559
    i64 129, label %589
    i64 130, label %609
    i64 139, label %629
    i64 131, label %648
    i64 150, label %683
  ]

19:                                               ; preds = %2
  %20 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %21 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %22, i32 0, i32 29
  %24 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %27 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %28, i32 0, i32 29
  %30 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %33 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %34, i32 0, i32 29
  %36 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %39 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %40, i32 0, i32 29
  %42 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %45 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @i40iw_sc_del_local_mac_ipaddr_entry(i32 %25, i32 %31, i32 %37, i32 %43, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %720

48:                                               ; preds = %2
  %49 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %50 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %51, i32 0, i32 28
  %53 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %56 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %57, i32 0, i32 28
  %59 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %62 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @i40iw_sc_ceq_destroy(i32 %54, i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %720

65:                                               ; preds = %2
  %66 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %67 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %68, i32 0, i32 27
  %70 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %73 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %74, i32 0, i32 27
  %76 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %79 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @i40iw_sc_aeq_destroy(i32 %71, i32 %77, i32 %80)
  store i32 %81, i32* %5, align 4
  br label %720

82:                                               ; preds = %2
  %83 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %84 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %85, i32 0, i32 26
  %87 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %90 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %91, i32 0, i32 26
  %93 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %96 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %97, i32 0, i32 26
  %99 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %102 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @i40iw_sc_del_arp_cache_entry(i32 %88, i32 %94, i32 %100, i32 %103)
  store i32 %104, i32* %5, align 4
  br label %720

105:                                              ; preds = %2
  %106 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %107 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %108, i32 0, i32 25
  %110 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %113 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %114, i32 0, i32 25
  %116 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %115, i32 0, i32 1
  %117 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %118 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %119, i32 0, i32 25
  %121 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %124 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @i40iw_sc_manage_apbvt_entry(i32 %111, i32* %116, i32 %122, i32 %125)
  store i32 %126, i32* %5, align 4
  br label %720

127:                                              ; preds = %2
  %128 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %129 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %130, i32 0, i32 24
  %132 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %135 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %136, i32 0, i32 24
  %138 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %141 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @i40iw_sc_ceq_create(i32 %133, i32 %139, i32 %142)
  store i32 %143, i32* %5, align 4
  br label %720

144:                                              ; preds = %2
  %145 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %146 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %147, i32 0, i32 23
  %149 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %152 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %153, i32 0, i32 23
  %155 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %158 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @i40iw_sc_aeq_create(i32 %150, i32 %156, i32 %159)
  store i32 %160, i32* %5, align 4
  br label %720

161:                                              ; preds = %2
  %162 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %163 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %164, i32 0, i32 22
  %166 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %169 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %170, i32 0, i32 22
  %172 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %175 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @i40iw_sc_alloc_local_mac_ipaddr_entry(i32 %167, i32 %173, i32 %176)
  store i32 %177, i32* %5, align 4
  br label %720

178:                                              ; preds = %2
  %179 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %180 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %181, i32 0, i32 21
  %183 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %186 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %187, i32 0, i32 21
  %189 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %188, i32 0, i32 1
  %190 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %191 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %192, i32 0, i32 21
  %194 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %197 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @i40iw_sc_add_local_mac_ipaddr_entry(i32 %184, i32* %189, i32 %195, i32 %198)
  store i32 %199, i32* %5, align 4
  br label %720

200:                                              ; preds = %2
  %201 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %202 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %203, i32 0, i32 20
  %205 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %208 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %209, i32 0, i32 20
  %211 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %210, i32 0, i32 1
  %212 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %213 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %214, i32 0, i32 20
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %219 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @i40iw_sc_manage_qhash_table_entry(i32 %206, i32* %211, i32 %217, i32 %220)
  store i32 %221, i32* %5, align 4
  br label %720

222:                                              ; preds = %2
  %223 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %224 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %225, i32 0, i32 19
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %230 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %231, i32 0, i32 19
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 1
  %234 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %235 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %236, i32 0, i32 19
  %238 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %241 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @i40iw_sc_qp_modify(i32 %228, i32* %233, i32 %239, i32 %242)
  store i32 %243, i32* %5, align 4
  br label %720

244:                                              ; preds = %2
  %245 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %246 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %247, i32 0, i32 18
  %249 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %252 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %253, i32 0, i32 18
  %255 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %254, i32 0, i32 1
  %256 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %257 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %258, i32 0, i32 18
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %263 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @i40iw_sc_qp_upload_context(i32 %250, i32* %255, i32 %261, i32 %264)
  store i32 %265, i32* %5, align 4
  br label %720

266:                                              ; preds = %2
  %267 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %268 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %269, i32 0, i32 17
  %271 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %274 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %275, i32 0, i32 17
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %280 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %281, i32 0, i32 17
  %283 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %286 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @i40iw_sc_cq_create(i32 %272, i32 %278, i32 %284, i32 %287)
  store i32 %288, i32* %5, align 4
  br label %720

289:                                              ; preds = %2
  %290 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %291 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %292, i32 0, i32 16
  %294 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %297 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %298, i32 0, i32 16
  %300 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %303 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @i40iw_sc_cq_destroy(i32 %295, i32 %301, i32 %304)
  store i32 %305, i32* %5, align 4
  br label %720

306:                                              ; preds = %2
  %307 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %308 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %309, i32 0, i32 15
  %311 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %314 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %315, i32 0, i32 15
  %317 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %316, i32 0, i32 1
  %318 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %319 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %320, i32 0, i32 15
  %322 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %325 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @i40iw_sc_qp_create(i32 %312, i32* %317, i32 %323, i32 %326)
  store i32 %327, i32* %5, align 4
  br label %720

328:                                              ; preds = %2
  %329 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %330 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %331, i32 0, i32 14
  %333 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %336 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %337, i32 0, i32 14
  %339 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %342 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %343, i32 0, i32 14
  %345 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %348 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %349, i32 0, i32 14
  %351 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %354 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @i40iw_sc_qp_destroy(i32 %334, i32 %340, i32 %346, i32 %352, i32 %355)
  store i32 %356, i32* %5, align 4
  br label %720

357:                                              ; preds = %2
  %358 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %359 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %360, i32 0, i32 13
  %362 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %365 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %366, i32 0, i32 13
  %368 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %367, i32 0, i32 1
  %369 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %370 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %371, i32 0, i32 13
  %373 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %376 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @i40iw_sc_alloc_stag(i32 %363, i32* %368, i32 %374, i32 %377)
  store i32 %378, i32* %5, align 4
  br label %720

379:                                              ; preds = %2
  %380 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %381 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %382, i32 0, i32 12
  %384 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %387 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %388, i32 0, i32 12
  %390 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %389, i32 0, i32 1
  %391 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %392 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %393, i32 0, i32 12
  %395 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %398 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @i40iw_sc_mr_reg_non_shared(i32 %385, i32* %390, i32 %396, i32 %399)
  store i32 %400, i32* %5, align 4
  br label %720

401:                                              ; preds = %2
  %402 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %403 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %404, i32 0, i32 11
  %406 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %409 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %410, i32 0, i32 11
  %412 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %411, i32 0, i32 1
  %413 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %414 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %415, i32 0, i32 11
  %417 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %420 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @i40iw_sc_dealloc_stag(i32 %407, i32* %412, i32 %418, i32 %421)
  store i32 %422, i32* %5, align 4
  br label %720

423:                                              ; preds = %2
  %424 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %425 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %426, i32 0, i32 10
  %428 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %431 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %432, i32 0, i32 10
  %434 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %437 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %438, i32 0, i32 10
  %440 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %443 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %444, i32 0, i32 10
  %446 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %449 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @i40iw_sc_mw_alloc(i32 %429, i32 %435, i32 %441, i32 %447, i32 %450)
  store i32 %451, i32* %5, align 4
  br label %720

452:                                              ; preds = %2
  %453 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %454 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %455, i32 0, i32 9
  %457 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %460 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %461, i32 0, i32 9
  %463 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %462, i32 0, i32 1
  %464 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %465 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %466, i32 0, i32 9
  %468 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %471 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @i40iw_sc_qp_flush_wqes(i32 %458, i32* %463, i32 %469, i32 %472)
  store i32 %473, i32* %5, align 4
  br label %720

474:                                              ; preds = %2
  %475 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %476 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %477, i32 0, i32 8
  %479 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %482 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %483, i32 0, i32 8
  %485 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %484, i32 0, i32 1
  %486 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %487 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %488, i32 0, i32 8
  %490 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %493 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @i40iw_sc_gen_ae(i32 %480, i32* %485, i32 %491, i32 %494)
  store i32 %495, i32* %5, align 4
  br label %720

496:                                              ; preds = %2
  %497 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %498 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %499, i32 0, i32 7
  %501 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %504 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %505, i32 0, i32 7
  %507 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %506, i32 0, i32 1
  %508 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %509 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %510, i32 0, i32 7
  %512 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %515 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @i40iw_sc_add_arp_cache_entry(i32 %502, i32* %507, i32 %513, i32 %516)
  store i32 %517, i32* %5, align 4
  br label %720

518:                                              ; preds = %2
  %519 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %520 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %521, i32 0, i32 6
  %523 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 4
  %525 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %526 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %527, i32 0, i32 6
  %529 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %528, i32 0, i32 1
  %530 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %531 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %532, i32 0, i32 6
  %534 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %537 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = call i32 @i40iw_sc_manage_push_page(i32 %524, i32* %529, i32 %535, i32 %538)
  store i32 %539, i32* %5, align 4
  br label %720

540:                                              ; preds = %2
  %541 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %542 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %543, i32 0, i32 5
  %545 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %544, i32 0, i32 2
  %546 = load i32, i32* %545, align 8
  %547 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %548 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %549, i32 0, i32 5
  %551 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %550, i32 0, i32 1
  %552 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %553 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %554, i32 0, i32 5
  %556 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = call i32 @i40iw_update_pe_sds(i32 %546, i32* %551, i32 %557)
  store i32 %558, i32* %5, align 4
  br label %720

559:                                              ; preds = %2
  %560 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %561 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %562, i32 0, i32 4
  %564 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %563, i32 0, i32 2
  %565 = load %struct.TYPE_52__*, %struct.TYPE_52__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 4
  %568 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %569 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %570, i32 0, i32 4
  %572 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %575 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %576, i32 0, i32 4
  %578 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %582 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %583, i32 0, i32 4
  %585 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = call i32 @i40iw_sc_manage_hmc_pm_func_table(i32 %567, i32 %573, i32 %580, i32 %587, i32 1)
  store i32 %588, i32* %5, align 4
  br label %720

589:                                              ; preds = %2
  %590 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %591 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %592, i32 0, i32 3
  %594 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %597 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %597, i32 0, i32 0
  %599 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %598, i32 0, i32 3
  %600 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %603 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %604, i32 0, i32 3
  %606 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @i40iw_sc_suspend_qp(i32 %595, i32 %601, i32 %607)
  store i32 %608, i32* %5, align 4
  br label %720

609:                                              ; preds = %2
  %610 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %611 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %612, i32 0, i32 3
  %614 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 4
  %616 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %617 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %616, i32 0, i32 1
  %618 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %617, i32 0, i32 0
  %619 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %618, i32 0, i32 3
  %620 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %623 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %623, i32 0, i32 0
  %625 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %624, i32 0, i32 3
  %626 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 4
  %628 = call i32 @i40iw_sc_resume_qp(i32 %615, i32 %621, i32 %627)
  store i32 %628, i32* %5, align 4
  br label %720

629:                                              ; preds = %2
  %630 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %631 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %632, i32 0, i32 2
  %634 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %633, i32 0, i32 2
  %635 = load i32, i32* %634, align 8
  %636 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %637 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %638, i32 0, i32 2
  %640 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %639, i32 0, i32 1
  %641 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %642 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %643, i32 0, i32 2
  %645 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 8
  %647 = call i32 @i40iw_manage_vf_pble_bp(i32 %635, i32* %640, i32 %646, i32 1)
  store i32 %647, i32* %5, align 4
  br label %720

648:                                              ; preds = %2
  %649 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %650 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %650, i32 0, i32 0
  %652 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %652, i32 0, i32 4
  %654 = load i32, i32* %653, align 4
  %655 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %6, i32 0, i32 1
  store i32 %654, i32* %655, align 4
  %656 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %657 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %656, i32 0, i32 1
  %658 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %657, i32 0, i32 0
  %659 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %659, i32 0, i32 3
  %661 = load i32, i32* %660, align 4
  %662 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %6, i32 0, i32 0
  store i32 %661, i32* %662, align 4
  %663 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %664 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 4
  %669 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %670 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %669, i32 0, i32 1
  %671 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %671, i32 0, i32 1
  %673 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %676 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %676, i32 0, i32 0
  %678 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %677, i32 0, i32 1
  %679 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %678, i32 0, i32 0
  %680 = load i32, i32* %679, align 4
  %681 = load i32, i32* @I40IW_CQP_WAIT_EVENT, align 4
  %682 = call i32 @i40iw_sc_query_fpm_values(i32 %668, i32 %674, i32 %680, %struct.i40iw_dma_mem* %6, i32 1, i32 %681)
  store i32 %682, i32* %5, align 4
  br label %720

683:                                              ; preds = %2
  %684 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %685 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %684, i32 0, i32 1
  %686 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %687, i32 0, i32 4
  %689 = load i32, i32* %688, align 8
  %690 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %6, i32 0, i32 1
  store i32 %689, i32* %690, align 4
  %691 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %692 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %691, i32 0, i32 1
  %693 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %693, i32 0, i32 0
  %695 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %694, i32 0, i32 3
  %696 = load i32, i32* %695, align 4
  %697 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %6, i32 0, i32 0
  store i32 %696, i32* %697, align 4
  %698 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %699 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %698, i32 0, i32 1
  %700 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %699, i32 0, i32 0
  %701 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %700, i32 0, i32 0
  %702 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %701, i32 0, i32 2
  %703 = load i32, i32* %702, align 8
  %704 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %705 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %705, i32 0, i32 0
  %707 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %706, i32 0, i32 0
  %708 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 4
  %710 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %4, align 8
  %711 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %710, i32 0, i32 1
  %712 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %711, i32 0, i32 0
  %713 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %712, i32 0, i32 0
  %714 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 8
  %716 = load i32, i32* @I40IW_CQP_WAIT_EVENT, align 4
  %717 = call i32 @i40iw_sc_commit_fpm_values(i32 %703, i32 %709, i32 %715, %struct.i40iw_dma_mem* %6, i32 1, i32 %716)
  store i32 %717, i32* %5, align 4
  br label %720

718:                                              ; preds = %2
  %719 = load i32, i32* @I40IW_NOT_SUPPORTED, align 4
  store i32 %719, i32* %5, align 4
  br label %720

720:                                              ; preds = %718, %683, %648, %629, %609, %589, %559, %540, %518, %496, %474, %452, %423, %401, %379, %357, %328, %306, %289, %266, %244, %222, %200, %178, %161, %144, %127, %105, %82, %65, %48, %19
  %721 = load i32, i32* %5, align 4
  ret i32 %721
}

declare dso_local i32 @i40iw_sc_del_local_mac_ipaddr_entry(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_ceq_destroy(i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_aeq_destroy(i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_del_arp_cache_entry(i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_manage_apbvt_entry(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_ceq_create(i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_aeq_create(i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_alloc_local_mac_ipaddr_entry(i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_add_local_mac_ipaddr_entry(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_manage_qhash_table_entry(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_qp_modify(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_qp_upload_context(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_cq_create(i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_cq_destroy(i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_qp_create(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_qp_destroy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_alloc_stag(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_mr_reg_non_shared(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_dealloc_stag(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_mw_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_qp_flush_wqes(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_gen_ae(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_add_arp_cache_entry(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_manage_push_page(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_update_pe_sds(i32, i32*, i32) #1

declare dso_local i32 @i40iw_sc_manage_hmc_pm_func_table(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_suspend_qp(i32, i32, i32) #1

declare dso_local i32 @i40iw_sc_resume_qp(i32, i32, i32) #1

declare dso_local i32 @i40iw_manage_vf_pble_bp(i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_query_fpm_values(i32, i32, i32, %struct.i40iw_dma_mem*, i32, i32) #1

declare dso_local i32 @i40iw_sc_commit_fpm_values(i32, i32, i32, %struct.i40iw_dma_mem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
