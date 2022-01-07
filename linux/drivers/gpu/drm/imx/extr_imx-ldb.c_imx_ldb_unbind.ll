; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.imx_ldb = type { %struct.imx_ldb_channel* }
%struct.imx_ldb_channel = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @imx_ldb_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_ldb_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.imx_ldb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.imx_ldb_channel*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.imx_ldb* @dev_get_drvdata(%struct.device* %10)
  store %struct.imx_ldb* %11, %struct.imx_ldb** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %40, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load %struct.imx_ldb*, %struct.imx_ldb** %7, align 8
  %17 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %16, i32 0, i32 0
  %18 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %18, i64 %20
  store %struct.imx_ldb_channel* %21, %struct.imx_ldb_channel** %9, align 8
  %22 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %9, align 8
  %23 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %9, align 8
  %28 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @drm_panel_detach(i64 %29)
  br label %31

31:                                               ; preds = %26, %15
  %32 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %9, align 8
  %33 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %9, align 8
  %37 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @i2c_put_adapter(i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %12

43:                                               ; preds = %12
  ret void
}

declare dso_local %struct.imx_ldb* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_panel_detach(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @i2c_put_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
