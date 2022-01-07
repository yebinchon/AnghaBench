; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.em_i2c_device = type { i64 }

@I2C_OFS_IICACT0 = common dso_local global i64 0, align 8
@I2C_BIT_IICE0 = common dso_local global i32 0, align 4
@I2C_BIT_DFC0 = common dso_local global i32 0, align 4
@I2C_OFS_IICCL0 = common dso_local global i64 0, align 8
@I2C_BIT_STCEN = common dso_local global i32 0, align 4
@I2C_BIT_IICRSV = common dso_local global i32 0, align 4
@I2C_OFS_IICF0 = common dso_local global i64 0, align 8
@I2C_BIT_WTIM0 = common dso_local global i32 0, align 4
@I2C_OFS_IICC0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @em_i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_i2c_reset(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.em_i2c_device*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = call %struct.em_i2c_device* @i2c_get_adapdata(%struct.i2c_adapter* %5)
  store %struct.em_i2c_device* %6, %struct.em_i2c_device** %3, align 8
  %7 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %8 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @I2C_OFS_IICACT0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readb(i64 %11)
  %13 = load i32, i32* @I2C_BIT_IICE0, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %18 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @I2C_OFS_IICACT0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writeb(i32 0, i64 %21)
  store i32 1000, i32* %4, align 4
  br label %23

23:                                               ; preds = %36, %16
  %24 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %25 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @I2C_OFS_IICACT0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readb(i64 %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi i1 [ false, %23 ], [ %33, %31 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %23

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  br label %44

44:                                               ; preds = %39, %1
  %45 = load i32, i32* @I2C_BIT_DFC0, align 4
  %46 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %47 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @I2C_OFS_IICCL0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i32 %45, i64 %50)
  %52 = load i32, i32* @I2C_BIT_STCEN, align 4
  %53 = load i32, i32* @I2C_BIT_IICRSV, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %56 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @I2C_OFS_IICF0, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writeb(i32 %54, i64 %59)
  %61 = load i32, i32* @I2C_BIT_WTIM0, align 4
  %62 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %63 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @I2C_OFS_IICC0, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writeb(i32 %61, i64 %66)
  %68 = load i32, i32* @I2C_BIT_IICE0, align 4
  %69 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %70 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @I2C_OFS_IICACT0, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writeb(i32 %68, i64 %73)
  store i32 1000, i32* %4, align 4
  br label %75

75:                                               ; preds = %88, %44
  %76 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %77 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @I2C_OFS_IICACT0, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readb(i64 %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %83, %75
  %87 = phi i1 [ false, %75 ], [ %85, %83 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %4, align 4
  br label %75

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON(i32 %94)
  ret void
}

declare dso_local %struct.em_i2c_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
