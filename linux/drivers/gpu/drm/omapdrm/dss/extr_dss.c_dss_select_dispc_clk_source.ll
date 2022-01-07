; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_select_dispc_clk_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_select_dispc_clk_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@DSS_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dss_device*, i32)* @dss_select_dispc_clk_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_select_dispc_clk_source(%struct.dss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %7 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 130
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %48

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %26 [
    i32 130, label %23
    i32 129, label %24
    i32 128, label %25
  ]

23:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %28

24:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %28

25:                                               ; preds = %21
  store i32 2, i32* %5, align 4
  br label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @BUG()
  br label %48

28:                                               ; preds = %25, %24, %23
  %29 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %30 = load i32, i32* @DSS_CONTROL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %33 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %39 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @REG_FLD_MOD(%struct.dss_device* %29, i32 %30, i32 %31, i32 %37, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %47 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %28, %26, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dss_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
