; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_set_softraw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_set_softraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i8*, i64)* @atkbd_set_softraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_set_softraw(%struct.atkbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atkbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atkbd* %0, %struct.atkbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @kstrtouint(i8* %13, i32 10, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %77

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %19
  %26 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %27 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %25
  %32 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %33 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %32, i32 0, i32 1
  %34 = load %struct.input_dev*, %struct.input_dev** %33, align 8
  store %struct.input_dev* %34, %struct.input_dev** %8, align 8
  %35 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %36 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %38, %struct.input_dev** %9, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %40 = icmp ne %struct.input_dev* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %77

44:                                               ; preds = %31
  %45 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %46 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %47 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %46, i32 0, i32 1
  store %struct.input_dev* %45, %struct.input_dev** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %50 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %52 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %51)
  %53 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %54 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %53, i32 0, i32 1
  %55 = load %struct.input_dev*, %struct.input_dev** %54, align 8
  %56 = call i32 @input_register_device(%struct.input_dev* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %44
  %60 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %61 = call i32 @input_free_device(%struct.input_dev* %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %63 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %64 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %63, i32 0, i32 1
  store %struct.input_dev* %62, %struct.input_dev** %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %67 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %69 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %44
  %72 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %73 = call i32 @input_unregister_device(%struct.input_dev* %72)
  br label %74

74:                                               ; preds = %71, %25
  %75 = load i64, i64* %7, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %59, %41, %22, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @atkbd_set_device_attrs(%struct.atkbd*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
