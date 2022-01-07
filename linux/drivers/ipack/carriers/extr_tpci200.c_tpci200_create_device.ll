; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/carriers/extr_tpci200.c_tpci200_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/carriers/extr_tpci200.c_tpci200_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpci200_board = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ipack_device = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tpci200_release_device = common dso_local global i32 0, align 4
@IPACK_SPACE_COUNT = common dso_local global i32 0, align 4
@tpci200_space_interval = common dso_local global i32* null, align 8
@tpci200_space_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpci200_board*, i32)* @tpci200_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpci200_create_device(%struct.tpci200_board* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpci200_board*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipack_device*, align 8
  store %struct.tpci200_board* %0, %struct.tpci200_board** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ipack_device* @kzalloc(i32 24, i32 %9)
  store %struct.ipack_device* %10, %struct.ipack_device** %8, align 8
  %11 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %12 = icmp ne %struct.ipack_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %19 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.tpci200_board*, %struct.tpci200_board** %4, align 8
  %21 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %26 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @tpci200_release_device, align 4
  %28 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %29 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %70, %16
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IPACK_SPACE_COUNT, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  %35 = load %struct.tpci200_board*, %struct.tpci200_board** %4, align 8
  %36 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** @tpci200_space_interval, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %41, %49
  %51 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %52 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 %50, i64* %57, align 8
  %58 = load i32*, i32** @tpci200_space_size, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %64 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 8
  br label %70

70:                                               ; preds = %34
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %30

73:                                               ; preds = %30
  %74 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %75 = call i32 @ipack_device_init(%struct.ipack_device* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %80 = call i32 @ipack_put_device(%struct.ipack_device* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %92

82:                                               ; preds = %73
  %83 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %84 = call i32 @ipack_device_add(%struct.ipack_device* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.ipack_device*, %struct.ipack_device** %8, align 8
  %89 = call i32 @ipack_put_device(%struct.ipack_device* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %78, %13
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.ipack_device* @kzalloc(i32, i32) #1

declare dso_local i32 @ipack_device_init(%struct.ipack_device*) #1

declare dso_local i32 @ipack_put_device(%struct.ipack_device*) #1

declare dso_local i32 @ipack_device_add(%struct.ipack_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
