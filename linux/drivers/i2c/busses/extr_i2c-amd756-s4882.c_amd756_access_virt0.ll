; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756-s4882.c_amd756_access_virt0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756-s4882.c_amd756_access_virt0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@amd756_lock = common dso_local global i32 0, align 4
@amd756_smbus = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @amd756_access_virt0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd756_access_virt0(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 76
  br i1 %18, label %30, label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 252
  %22 = icmp eq i32 %21, 80
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 252
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 24
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %23, %19, %7
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %48

33:                                               ; preds = %27
  %34 = call i32 @mutex_lock(i32* @amd756_lock)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd756_smbus, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %36, align 8
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i16, i16* %11, align 2
  %41 = load i8, i8* %12, align 1
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %45 = call i32 %37(%struct.i2c_adapter* %38, i32 %39, i16 zeroext %40, i8 signext %41, i32 %42, i32 %43, %union.i2c_smbus_data* %44)
  store i32 %45, i32* %16, align 4
  %46 = call i32 @mutex_unlock(i32* @amd756_lock)
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %33, %30
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
