; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i32 }
%struct.efa_ucontext = type { i32 }
%struct.efa_dev = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"start %#lx, end %#lx, length = %#llx, key = %#llx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"length[%#llx] is not page size aligned[%#lx] or VM_SHARED is not set [%#lx]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Mapping executable pages is not permitted\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.efa_ucontext*, align 8
  %7 = alloca %struct.efa_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %11 = call %struct.efa_ucontext* @to_eucontext(%struct.ib_ucontext* %10)
  store %struct.efa_ucontext* %11, %struct.efa_ucontext** %6, align 8
  %12 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %13 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.efa_dev* @to_edev(i32 %14)
  store %struct.efa_dev* %15, %struct.efa_dev** %7, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %29 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %28, i32 0, i32 0
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = srem i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %2
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VM_SHARED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %43, %2
  %51 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %52 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %52, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %81

61:                                               ; preds = %43
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VM_EXEC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %70 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %81

74:                                               ; preds = %61
  %75 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %76 = load %struct.efa_ucontext*, %struct.efa_ucontext** %6, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @__efa_mmap(%struct.efa_dev* %75, %struct.efa_ucontext* %76, %struct.vm_area_struct* %77, i32 %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %68, %50
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.efa_ucontext* @to_eucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.efa_dev* @to_edev(i32) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @__efa_mmap(%struct.efa_dev*, %struct.efa_ucontext*, %struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
