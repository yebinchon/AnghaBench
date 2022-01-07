; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_alloc_devdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_alloc_devdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@qib_dev_table = common dso_local global i32 0, align 4
@xa_limit_32b = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not allocate unit ID: error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"qib\00", align 1
@u64 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not allocate per-cpu int_counter\0A\00", align 1
@qib_cpulist_count = common dso_local global i64 0, align 8
@qib_cpulist = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_devdata* @qib_alloc_devdata(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = udiv i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = add i64 16, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @rvt_alloc_device(i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.qib_devdata*
  store %struct.qib_devdata* %18, %struct.qib_devdata** %6, align 8
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %20 = icmp ne %struct.qib_devdata* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.qib_devdata* @ERR_PTR(i32 %23)
  store %struct.qib_devdata* %24, %struct.qib_devdata** %3, align 8
  br label %94

25:                                               ; preds = %2
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 3
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %29 = load i32, i32* @xa_limit_32b, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @xa_alloc_irq(i32* @qib_dev_table, i32* %27, %struct.qib_devdata* %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 (i32*, i8*, ...) @qib_early_err(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %78

40:                                               ; preds = %25
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rvt_set_ibdev_name(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @u64, align 4
  %49 = call i32 @alloc_percpu(i32 %48)
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %40
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 (i32*, i8*, ...) @qib_early_err(i32* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %78

62:                                               ; preds = %40
  %63 = load i64, i64* @qib_cpulist_count, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = call i64 (...) @num_online_cpus()
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @BITS_TO_LONGS(i64 %67)
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i64 @kcalloc(i32 %68, i32 8, i32 %69)
  store i64 %70, i64* @qib_cpulist, align 8
  %71 = load i64, i64* @qib_cpulist, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* @qib_cpulist_count, align 8
  br label %75

75:                                               ; preds = %73, %65
  br label %76

76:                                               ; preds = %75, %62
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  store %struct.qib_devdata* %77, %struct.qib_devdata** %3, align 8
  br label %94

78:                                               ; preds = %56, %34
  %79 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %80 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %79, i32 0, i32 1
  %81 = call i32 @list_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 1
  %86 = call i32 @list_del_init(i32* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %89 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @rvt_dealloc_device(i32* %90)
  %92 = load i32, i32* %7, align 4
  %93 = call %struct.qib_devdata* @ERR_PTR(i32 %92)
  store %struct.qib_devdata* %93, %struct.qib_devdata** %3, align 8
  br label %94

94:                                               ; preds = %87, %76, %21
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  ret %struct.qib_devdata* %95
}

declare dso_local i64 @rvt_alloc_device(i32, i32) #1

declare dso_local %struct.qib_devdata* @ERR_PTR(i32) #1

declare dso_local i32 @xa_alloc_irq(i32*, i32*, %struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_early_err(i32*, i8*, ...) #1

declare dso_local i32 @rvt_set_ibdev_name(i32*, i8*, i8*, i32) #1

declare dso_local i32 @alloc_percpu(i32) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i64 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rvt_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
