; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_id_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipack_device = type { i32, i32, i32* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipack_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ipack_device* @to_ipack_dev(%struct.device* %13)
  store %struct.ipack_device* %14, %struct.ipack_device** %12, align 8
  %15 = load %struct.ipack_device*, %struct.ipack_device** %12, align 8
  %16 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %20 [
    i32 129, label %18
    i32 128, label %19
  ]

18:                                               ; preds = %3
  store i32 7, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %23

19:                                               ; preds = %3
  store i32 15, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EIO, align 4
  %22 = sub i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %19, %18
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %72, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ipack_device*, %struct.ipack_device** %12, align 8
  %27 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 10, i8* %43, align 1
  br label %56

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 32, i8* %54, align 1
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load %struct.ipack_device*, %struct.ipack_device** %12, align 8
  %63 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 2
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %24

75:                                               ; preds = %24
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 10, i8* %80, align 1
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %75, %20
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.ipack_device* @to_ipack_dev(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
