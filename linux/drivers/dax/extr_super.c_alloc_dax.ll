; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_alloc_dax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_alloc_dax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_device = type { i8*, %struct.dax_operations* }
%struct.dax_operations = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dax_minor_ida = common dso_local global i32 0, align 4
@MINORMASK = common dso_local global i64 0, align 8
@dax_devt = common dso_local global i32 0, align 4
@DAXDEV_F_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dax_device* @alloc_dax(i8* %0, i8* %1, %struct.dax_operations* %2, i64 %3) #0 {
  %5 = alloca %struct.dax_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dax_operations*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dax_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.dax_operations* %2, %struct.dax_operations** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kstrdup(i8* %14, i32 %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store %struct.dax_device* null, %struct.dax_device** %5, align 8
  br label %66

23:                                               ; preds = %19, %4
  %24 = load i64, i64* @MINORMASK, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @ida_simple_get(i32* @dax_minor_ida, i32 0, i64 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %63

31:                                               ; preds = %23
  %32 = load i32, i32* @dax_devt, align 4
  %33 = call i32 @MAJOR(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @MKDEV(i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call %struct.dax_device* @dax_dev_get(i32 %36)
  store %struct.dax_device* %37, %struct.dax_device** %10, align 8
  %38 = load %struct.dax_device*, %struct.dax_device** %10, align 8
  %39 = icmp ne %struct.dax_device* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %60

41:                                               ; preds = %31
  %42 = load %struct.dax_device*, %struct.dax_device** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @dax_add_host(%struct.dax_device* %42, i8* %43)
  %45 = load %struct.dax_operations*, %struct.dax_operations** %8, align 8
  %46 = load %struct.dax_device*, %struct.dax_device** %10, align 8
  %47 = getelementptr inbounds %struct.dax_device, %struct.dax_device* %46, i32 0, i32 1
  store %struct.dax_operations* %45, %struct.dax_operations** %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.dax_device*, %struct.dax_device** %10, align 8
  %50 = getelementptr inbounds %struct.dax_device, %struct.dax_device* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @DAXDEV_F_SYNC, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load %struct.dax_device*, %struct.dax_device** %10, align 8
  %57 = call i32 @set_dax_synchronous(%struct.dax_device* %56)
  br label %58

58:                                               ; preds = %55, %41
  %59 = load %struct.dax_device*, %struct.dax_device** %10, align 8
  store %struct.dax_device* %59, %struct.dax_device** %5, align 8
  br label %66

60:                                               ; preds = %40
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ida_simple_remove(i32* @dax_minor_ida, i32 %61)
  br label %63

63:                                               ; preds = %60, %30
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @kfree(i8* %64)
  store %struct.dax_device* null, %struct.dax_device** %5, align 8
  br label %66

66:                                               ; preds = %63, %58, %22
  %67 = load %struct.dax_device*, %struct.dax_device** %5, align 8
  ret %struct.dax_device* %67
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i64, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.dax_device* @dax_dev_get(i32) #1

declare dso_local i32 @dax_add_host(%struct.dax_device*, i8*) #1

declare dso_local i32 @set_dax_synchronous(%struct.dax_device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
