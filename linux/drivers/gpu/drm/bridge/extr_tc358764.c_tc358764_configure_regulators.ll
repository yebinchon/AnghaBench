; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_configure_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_configure_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc358764 = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@tc358764_supplies = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc358764*)* @tc358764_configure_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc358764_configure_regulators(%struct.tc358764* %0) #0 {
  %2 = alloca %struct.tc358764*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tc358764* %0, %struct.tc358764** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tc358764*, %struct.tc358764** %2, align 8
  %8 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %5
  %13 = load i32*, i32** @tc358764_supplies, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tc358764*, %struct.tc358764** %2, align 8
  %19 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %17, i32* %24, align 4
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.tc358764*, %struct.tc358764** %2, align 8
  %30 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tc358764*, %struct.tc358764** %2, align 8
  %33 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %34)
  %36 = load %struct.tc358764*, %struct.tc358764** %2, align 8
  %37 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @devm_regulator_bulk_get(i32 %31, i32 %35, %struct.TYPE_3__* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load %struct.tc358764*, %struct.tc358764** %2, align 8
  %44 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %28
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
