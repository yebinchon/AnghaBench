; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_set_softrepeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_set_softrepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32, i32, %struct.input_dev*, i32 }
%struct.input_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i8*, i64)* @atkbd_set_softrepeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_set_softrepeat(%struct.atkbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atkbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.atkbd* %0, %struct.atkbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %15 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %100

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @kstrtouint(i8* %22, i32 10, i32* %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %100

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %100

34:                                               ; preds = %28
  %35 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %36 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %34
  %41 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %42 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %41, i32 0, i32 2
  %43 = load %struct.input_dev*, %struct.input_dev** %42, align 8
  store %struct.input_dev* %43, %struct.input_dev** %8, align 8
  %44 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %45 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %12, align 4
  %47 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %48 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %50, %struct.input_dev** %9, align 8
  %51 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %52 = icmp ne %struct.input_dev* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %100

56:                                               ; preds = %40
  %57 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %58 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %59 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %58, i32 0, i32 2
  store %struct.input_dev* %57, %struct.input_dev** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %62 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %64 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %69 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %56
  %71 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %72 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %71)
  %73 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %74 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %73, i32 0, i32 2
  %75 = load %struct.input_dev*, %struct.input_dev** %74, align 8
  %76 = call i32 @input_register_device(%struct.input_dev* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %70
  %80 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %81 = call i32 @input_free_device(%struct.input_dev* %80)
  %82 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %83 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %84 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %83, i32 0, i32 2
  store %struct.input_dev* %82, %struct.input_dev** %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %87 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %90 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %92 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %100

94:                                               ; preds = %70
  %95 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %96 = call i32 @input_unregister_device(%struct.input_dev* %95)
  br label %97

97:                                               ; preds = %94, %34
  %98 = load i64, i64* %7, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %79, %53, %31, %26, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
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
