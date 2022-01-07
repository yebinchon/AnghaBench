; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_set_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_set_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32, i32 }
%struct.dcn20_hubp = type { i32 }

@DCHUBP_CNTL = common dso_local global i32 0, align 4
@HUBP_BLANK_EN = common dso_local global i32 0, align 4
@HUBP_TTU_DISABLE = common dso_local global i32 0, align 4
@HUBP_NO_OUTSTANDING_REQ = common dso_local global i32 0, align 4
@OPP_ID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp2_set_blank(%struct.hubp* %0, i32 %1) #0 {
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
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @DCHUBP_CNTL, align 4
  %15 = load i32, i32* @HUBP_BLANK_EN, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @HUBP_TTU_DISABLE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @REG_UPDATE_2(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i32, i32* @DCHUBP_CNTL, align 4
  %24 = call i32 @REG_READ(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @DCHUBP_CNTL, align 4
  %29 = load i32, i32* @HUBP_NO_OUTSTANDING_REQ, align 4
  %30 = call i32 @REG_WAIT(i32 %28, i32 %29, i32 1, i32 1, i32 200)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.hubp*, %struct.hubp** %3, align 8
  %33 = getelementptr inbounds %struct.hubp, %struct.hubp* %32, i32 0, i32 0
  store i32 15, i32* %33, align 4
  %34 = load i32, i32* @OPP_ID_INVALID, align 4
  %35 = load %struct.hubp*, %struct.hubp** %3, align 8
  %36 = getelementptr inbounds %struct.hubp, %struct.hubp* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %2
  ret void
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
