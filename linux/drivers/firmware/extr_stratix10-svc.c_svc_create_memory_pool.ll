; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_svc_create_memory_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_svc_create_memory_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stratix10_svc_sh_memory = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MEMREMAP_WC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fail to remap shared memory\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"reserved memory vaddr: %p, paddr: 0x%16x size: 0x%8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"page is not aligned\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"fail to create genpool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@gen_pool_best_fit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"fail to add memory chunk to the pool\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gen_pool* (%struct.platform_device*, %struct.stratix10_svc_sh_memory*)* @svc_create_memory_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gen_pool* @svc_create_memory_pool(%struct.platform_device* %0, %struct.stratix10_svc_sh_memory* %1) #0 {
  %3 = alloca %struct.gen_pool*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stratix10_svc_sh_memory*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gen_pool*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stratix10_svc_sh_memory* %1, %struct.stratix10_svc_sh_memory** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %14, align 8
  store i32 3, i32* %15, align 4
  %22 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %23 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i64 @roundup(i64 %24, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %28 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %31 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i64 @rounddown(i64 %34, i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* @MEMREMAP_WC, align 4
  %44 = call i8* @memremap(i64 %41, i64 %42, i32 %43)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %2
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.gen_pool* @ERR_PTR(i32 %51)
  store %struct.gen_pool* %52, %struct.gen_pool** %3, align 8
  br label %114

53:                                               ; preds = %2
  %54 = load i8*, i8** %13, align 8
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %8, align 8
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %59, i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %14, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %53
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %14, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %14, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %67, %53
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.gen_pool* @ERR_PTR(i32 %81)
  store %struct.gen_pool* %82, %struct.gen_pool** %3, align 8
  br label %114

83:                                               ; preds = %72
  %84 = load i32, i32* %15, align 4
  %85 = call %struct.gen_pool* @gen_pool_create(i32 %84, i32 -1)
  store %struct.gen_pool* %85, %struct.gen_pool** %7, align 8
  %86 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %87 = icmp ne %struct.gen_pool* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  %93 = call %struct.gen_pool* @ERR_PTR(i32 %92)
  store %struct.gen_pool* %93, %struct.gen_pool** %3, align 8
  br label %114

94:                                               ; preds = %83
  %95 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %96 = load i32, i32* @gen_pool_best_fit, align 4
  %97 = call i32 @gen_pool_set_algo(%struct.gen_pool* %95, i32 %96, i32* null)
  %98 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @gen_pool_add_virt(%struct.gen_pool* %98, i64 %99, i64 %100, i64 %101, i32 -1)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %109 = call i32 @gen_pool_destroy(%struct.gen_pool* %108)
  %110 = load i32, i32* %16, align 4
  %111 = call %struct.gen_pool* @ERR_PTR(i32 %110)
  store %struct.gen_pool* %111, %struct.gen_pool** %3, align 8
  br label %114

112:                                              ; preds = %94
  %113 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  store %struct.gen_pool* %113, %struct.gen_pool** %3, align 8
  br label %114

114:                                              ; preds = %112, %105, %88, %77, %47
  %115 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  ret %struct.gen_pool* %115
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @rounddown(i64, i32) #1

declare dso_local i8* @memremap(i64, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.gen_pool* @ERR_PTR(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32) #1

declare dso_local %struct.gen_pool* @gen_pool_create(i32, i32) #1

declare dso_local i32 @gen_pool_set_algo(%struct.gen_pool*, i32, i32*) #1

declare dso_local i32 @gen_pool_add_virt(%struct.gen_pool*, i64, i64, i64, i32) #1

declare dso_local i32 @gen_pool_destroy(%struct.gen_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
