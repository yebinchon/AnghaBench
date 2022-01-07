; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_new_id_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_new_id_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.hid_driver = type { i32, i32, i32 }
%struct.hid_dynid = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"%x %x %x %lx\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@HID_GROUP_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @new_id_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @new_id_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hid_driver*, align 8
  %9 = alloca %struct.hid_dynid*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %16 = call %struct.hid_driver* @to_hid_driver(%struct.device_driver* %15)
  store %struct.hid_driver* %16, %struct.hid_driver** %8, align 8
  store i64 0, i64* %13, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %10, i8** %11, i8** %12, i64* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %75

24:                                               ; preds = %3
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hid_dynid* @kzalloc(i32 48, i32 %25)
  store %struct.hid_dynid* %26, %struct.hid_dynid** %9, align 8
  %27 = load %struct.hid_dynid*, %struct.hid_dynid** %9, align 8
  %28 = icmp ne %struct.hid_dynid* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @ENOMEM, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %75

32:                                               ; preds = %24
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.hid_dynid*, %struct.hid_dynid** %9, align 8
  %35 = getelementptr inbounds %struct.hid_dynid, %struct.hid_dynid* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @HID_GROUP_ANY, align 4
  %38 = load %struct.hid_dynid*, %struct.hid_dynid** %9, align 8
  %39 = getelementptr inbounds %struct.hid_dynid, %struct.hid_dynid* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.hid_dynid*, %struct.hid_dynid** %9, align 8
  %43 = getelementptr inbounds %struct.hid_dynid, %struct.hid_dynid* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.hid_dynid*, %struct.hid_dynid** %9, align 8
  %47 = getelementptr inbounds %struct.hid_dynid, %struct.hid_dynid* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.hid_dynid*, %struct.hid_dynid** %9, align 8
  %51 = getelementptr inbounds %struct.hid_dynid, %struct.hid_dynid* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.hid_driver*, %struct.hid_driver** %8, align 8
  %54 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %53, i32 0, i32 1
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.hid_dynid*, %struct.hid_dynid** %9, align 8
  %57 = getelementptr inbounds %struct.hid_dynid, %struct.hid_dynid* %56, i32 0, i32 0
  %58 = load %struct.hid_driver*, %struct.hid_driver** %8, align 8
  %59 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %58, i32 0, i32 2
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.hid_driver*, %struct.hid_driver** %8, align 8
  %62 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.hid_driver*, %struct.hid_driver** %8, align 8
  %65 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %64, i32 0, i32 0
  %66 = call i32 @driver_attach(i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %32
  %70 = sext i32 %67 to i64
  br label %73

71:                                               ; preds = %32
  %72 = load i64, i64* %7, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i64 [ %70, %69 ], [ %72, %71 ]
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %73, %29, %21
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local %struct.hid_driver* @to_hid_driver(%struct.device_driver*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, i8**, i64*) #1

declare dso_local %struct.hid_dynid* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @driver_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
