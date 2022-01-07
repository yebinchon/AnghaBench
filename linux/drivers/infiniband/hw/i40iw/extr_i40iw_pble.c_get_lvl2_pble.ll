; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_get_lvl2_pble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_get_lvl2_pble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hmc_pble_rsrc = type { i32 }
%struct.i40iw_pble_alloc = type { i32, i32, %struct.i40iw_pble_level2 }
%struct.i40iw_pble_level2 = type { i32, %struct.i40iw_pble_info*, %struct.i40iw_pble_info }
%struct.i40iw_pble_info = type { i32, i8*, i8* }
%struct.gen_pool = type { i32 }

@PBLE_PER_PAGE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@I40IW_LEVEL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*, %struct.gen_pool*)* @get_lvl2_pble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lvl2_pble(%struct.i40iw_hmc_pble_rsrc* %0, %struct.i40iw_pble_alloc* %1, %struct.gen_pool* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %6 = alloca %struct.i40iw_pble_alloc*, align 8
  %7 = alloca %struct.gen_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.i40iw_pble_level2*, align 8
  %15 = alloca %struct.i40iw_pble_info*, align 8
  %16 = alloca %struct.i40iw_pble_info*, align 8
  store %struct.i40iw_hmc_pble_rsrc* %0, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  store %struct.i40iw_pble_alloc* %1, %struct.i40iw_pble_alloc** %6, align 8
  store %struct.gen_pool* %2, %struct.gen_pool** %7, align 8
  %17 = load i32, i32* @PBLE_PER_PAGE, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %6, align 8
  %19 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %18, i32 0, i32 2
  store %struct.i40iw_pble_level2* %19, %struct.i40iw_pble_level2** %14, align 8
  %20 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %14, align 8
  %21 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %20, i32 0, i32 2
  store %struct.i40iw_pble_info* %21, %struct.i40iw_pble_info** %15, align 8
  %22 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %6, align 8
  %23 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 9
  store i32 %25, i32* %8, align 4
  %26 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %6, align 8
  %27 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PBLE_PER_PAGE, align 4
  %30 = srem i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %14, align 8
  %42 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 24, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.i40iw_pble_info* @kzalloc(i32 %46, i32 %47)
  store %struct.i40iw_pble_info* %48, %struct.i40iw_pble_info** %16, align 8
  %49 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %50 = icmp ne %struct.i40iw_pble_info* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %52, i32* %4, align 4
  br label %159

53:                                               ; preds = %38
  %54 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %55 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %14, align 8
  %56 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %55, i32 0, i32 1
  store %struct.i40iw_pble_info* %54, %struct.i40iw_pble_info** %56, align 8
  %57 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %58, 3
  %60 = call i8* @gen_pool_alloc(%struct.gen_pool* %57, i32 %59)
  %61 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %15, align 8
  %62 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %15, align 8
  %64 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %53
  %68 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %14, align 8
  %69 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %68, i32 0, i32 1
  %70 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %69, align 8
  %71 = call i32 @kfree(%struct.i40iw_pble_info* %70)
  %72 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %14, align 8
  %73 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %72, i32 0, i32 1
  store %struct.i40iw_pble_info* null, %struct.i40iw_pble_info** %73, align 8
  %74 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %74, i32* %4, align 4
  br label %159

75:                                               ; preds = %53
  %76 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %77 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %78 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %15, align 8
  %79 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @gen_pool_virt_to_phys(%struct.gen_pool* %77, i8* %80)
  %82 = call i8* @fpm_to_idx(%struct.i40iw_hmc_pble_rsrc* %76, i64 %81)
  %83 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %15, align 8
  %84 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %15, align 8
  %87 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %15, align 8
  %89 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast i8* %90 to i64*
  store i64* %91, i64** %13, align 8
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %141, %75
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %146

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  br label %108

106:                                              ; preds = %99, %96
  %107 = load i32, i32* @PBLE_PER_PAGE, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %12, align 4
  %110 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %111 = load i32, i32* %12, align 4
  %112 = shl i32 %111, 3
  %113 = call i8* @gen_pool_alloc(%struct.gen_pool* %110, i32 %112)
  %114 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %115 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %117 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %108
  br label %154

121:                                              ; preds = %108
  %122 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %123 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %124 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %125 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @gen_pool_virt_to_phys(%struct.gen_pool* %123, i8* %126)
  %128 = call i8* @fpm_to_idx(%struct.i40iw_hmc_pble_rsrc* %122, i64 %127)
  %129 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %130 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %133 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %135 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load i64*, i64** %13, align 8
  store i64 %137, i64* %138, align 8
  %139 = load i64*, i64** %13, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %13, align 8
  br label %141

141:                                              ; preds = %121
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %16, align 8
  %145 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %144, i32 1
  store %struct.i40iw_pble_info* %145, %struct.i40iw_pble_info** %16, align 8
  br label %92

146:                                              ; preds = %92
  %147 = load i32, i32* @I40IW_LEVEL_2, align 4
  %148 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %6, align 8
  %149 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %151 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  store i32 0, i32* %4, align 4
  br label %159

154:                                              ; preds = %120
  %155 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %156 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %6, align 8
  %157 = call i32 @free_lvl2(%struct.i40iw_hmc_pble_rsrc* %155, %struct.i40iw_pble_alloc* %156)
  %158 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %154, %146, %67, %51
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.i40iw_pble_info* @kzalloc(i32, i32) #1

declare dso_local i8* @gen_pool_alloc(%struct.gen_pool*, i32) #1

declare dso_local i32 @kfree(%struct.i40iw_pble_info*) #1

declare dso_local i8* @fpm_to_idx(%struct.i40iw_hmc_pble_rsrc*, i64) #1

declare dso_local i64 @gen_pool_virt_to_phys(%struct.gen_pool*, i8*) #1

declare dso_local i32 @free_lvl2(%struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
