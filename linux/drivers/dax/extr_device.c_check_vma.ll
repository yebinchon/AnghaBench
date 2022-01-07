; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_device.c_check_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_device.c_check_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dev_dax = type { i32, %struct.device, %struct.dax_region* }
%struct.device = type { i32 }
%struct.dax_region = type { i32, i32 }
%struct.vm_area_struct = type { i32, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: %s: fail, attempted private mapping\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: %s: fail, unaligned vma (%#lx - %#lx, %#lx)\0A\00", align 1
@PFN_DEV = common dso_local global i32 0, align 4
@PFN_MAP = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: %s: fail, dax range requires MADV_DONTFORK\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: %s: fail, vma is not DAX capable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_dax*, %struct.vm_area_struct*, i8*)* @check_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_vma(%struct.dev_dax* %0, %struct.vm_area_struct* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_dax*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dax_region*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  store %struct.dev_dax* %0, %struct.dev_dax** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.dev_dax*, %struct.dev_dax** %5, align 8
  %12 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %11, i32 0, i32 2
  %13 = load %struct.dax_region*, %struct.dax_region** %12, align 8
  store %struct.dax_region* %13, %struct.dax_region** %8, align 8
  %14 = load %struct.dev_dax*, %struct.dev_dax** %5, align 8
  %15 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.dev_dax*, %struct.dev_dax** %5, align 8
  %17 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dax_alive(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %116

24:                                               ; preds = %3
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @VM_MAYSHARE, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @VM_MAYSHARE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (%struct.device*, i8*, i32, i8*, ...) @dev_info_ratelimited(%struct.device* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %116

41:                                               ; preds = %24
  %42 = load %struct.dax_region*, %struct.dax_region** %8, align 8
  %43 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %10, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %41
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53, %41
  %61 = load %struct.device*, %struct.device** %9, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 (%struct.device*, i8*, i32, i8*, ...) @dev_info_ratelimited(%struct.device* %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65, i64 %68, i64 %71, i64 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %116

76:                                               ; preds = %53
  %77 = load %struct.dax_region*, %struct.dax_region** %8, align 8
  %78 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PFN_DEV, align 4
  %81 = load i32, i32* @PFN_MAP, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = load i32, i32* @PFN_DEV, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %76
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @VM_DONTCOPY, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load %struct.device*, %struct.device** %9, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 (%struct.device*, i8*, i32, i8*, ...) @dev_info_ratelimited(%struct.device* %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %97, i8* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %116

102:                                              ; preds = %86, %76
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %104 = call i32 @vma_is_dax(%struct.vm_area_struct* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = load %struct.device*, %struct.device** %9, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 (%struct.device*, i8*, i32, i8*, ...) @dev_info_ratelimited(%struct.device* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %110, i8* %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %116

115:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %106, %93, %60, %32, %21
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @dax_alive(i32) #1

declare dso_local i32 @dev_info_ratelimited(%struct.device*, i8*, i32, i8*, ...) #1

declare dso_local i32 @vma_is_dax(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
