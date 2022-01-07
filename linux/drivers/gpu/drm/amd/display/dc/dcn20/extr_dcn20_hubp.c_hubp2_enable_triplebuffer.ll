; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_enable_triplebuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_enable_triplebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dcn20_hubp = type { i32 }

@DCSURF_FLIP_CONTROL2 = common dso_local global i32 0, align 4
@SURFACE_TRIPLE_BUFFER_ENABLE = common dso_local global i32 0, align 4
@DC_TRIPLEBUFFER_ENABLE = common dso_local global i32 0, align 4
@DC_TRIPLEBUFFER_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp2_enable_triplebuffer(%struct.hubp* %0, i32 %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn20_hubp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hubp*, %struct.hubp** %3, align 8
  %9 = call %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp* %8)
  store %struct.dcn20_hubp* %9, %struct.dcn20_hubp** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @DCSURF_FLIP_CONTROL2, align 4
  %11 = load i32, i32* @SURFACE_TRIPLE_BUFFER_ENABLE, align 4
  %12 = call i32 @REG_GET(i32 %10, i32 %11, i32* %6)
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load i32, i32* @DCSURF_FLIP_CONTROL2, align 4
  %21 = load i32, i32* @SURFACE_TRIPLE_BUFFER_ENABLE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @DC_TRIPLEBUFFER_ENABLE, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @DC_TRIPLEBUFFER_DISABLE, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 %29)
  br label %31

31:                                               ; preds = %28, %2
  ret void
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
