; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_set_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_set_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32, i32, %struct.input_dev*, i32 }
%struct.input_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i8*, i64)* @atkbd_set_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_set_set(%struct.atkbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atkbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
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
  br label %112

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
  br label %112

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %112

37:                                               ; preds = %31, %28
  %38 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %39 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %109

43:                                               ; preds = %37
  %44 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %45 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %44, i32 0, i32 2
  %46 = load %struct.input_dev*, %struct.input_dev** %45, align 8
  store %struct.input_dev* %46, %struct.input_dev** %8, align 8
  %47 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %48 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %51 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %12, align 1
  %54 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %54, %struct.input_dev** %9, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %56 = icmp ne %struct.input_dev* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %112

60:                                               ; preds = %43
  %61 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %62 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %63 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %62, i32 0, i32 2
  store %struct.input_dev* %61, %struct.input_dev** %63, align 8
  %64 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = trunc i32 %65 to i8
  %67 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %68 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @atkbd_select_set(%struct.atkbd* %64, i8 zeroext %66, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %73 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %75 = call i32 @atkbd_reset_state(%struct.atkbd* %74)
  %76 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %77 = call i32 @atkbd_activate(%struct.atkbd* %76)
  %78 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %79 = call i32 @atkbd_set_keycode_table(%struct.atkbd* %78)
  %80 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %81 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %80)
  %82 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %83 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %82, i32 0, i32 2
  %84 = load %struct.input_dev*, %struct.input_dev** %83, align 8
  %85 = call i32 @input_register_device(%struct.input_dev* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %60
  %89 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %90 = call i32 @input_free_device(%struct.input_dev* %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %92 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %93 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %92, i32 0, i32 2
  store %struct.input_dev* %91, %struct.input_dev** %93, align 8
  %94 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %95 = load i8, i8* %12, align 1
  %96 = load i32, i32* %13, align 4
  %97 = call i8* @atkbd_select_set(%struct.atkbd* %94, i8 zeroext %95, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %100 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %102 = call i32 @atkbd_set_keycode_table(%struct.atkbd* %101)
  %103 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %104 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %112

106:                                              ; preds = %60
  %107 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %108 = call i32 @input_unregister_device(%struct.input_dev* %107)
  br label %109

109:                                              ; preds = %106, %37
  %110 = load i64, i64* %7, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %109, %88, %57, %34, %26, %18
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i8* @atkbd_select_set(%struct.atkbd*, i8 zeroext, i32) #1

declare dso_local i32 @atkbd_reset_state(%struct.atkbd*) #1

declare dso_local i32 @atkbd_activate(%struct.atkbd*) #1

declare dso_local i32 @atkbd_set_keycode_table(%struct.atkbd*) #1

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
