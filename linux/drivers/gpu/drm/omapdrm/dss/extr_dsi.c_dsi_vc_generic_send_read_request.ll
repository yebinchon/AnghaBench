; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_generic_send_read_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_generic_send_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"dsi_vc_generic_send_read_request(ch %d, reqlen %d)\0A\00", align 1
@MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"dsi_vc_generic_send_read_request(ch %d, reqlen %d) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32, i32*, i32)* @dsi_vc_generic_send_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_generic_send_read_request(%struct.dsi_data* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @DSSDBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %53

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  br label %52

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* @MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %41, %45
  store i32 %46, i32* %10, align 4
  br label %51

47:                                               ; preds = %34
  %48 = call i32 (...) @BUG()
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %67

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @dsi_vc_send_short(%struct.dsi_data* %54, i32 %55, i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @DSSERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %67

66:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %61, %47
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dsi_vc_send_short(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @DSSERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
