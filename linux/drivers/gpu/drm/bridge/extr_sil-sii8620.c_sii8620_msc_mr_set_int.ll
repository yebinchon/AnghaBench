; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_msc_mr_set_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_msc_mr_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32, i32, i64 }

@MHL_INT_SIZE = common dso_local global i32 0, align 4
@REG_MHL_INT_0 = common dso_local global i32 0, align 4
@MHL_INT_RCHANGE = common dso_local global i64 0, align 8
@MHL_INT_RC_DCAP_CHG = common dso_local global i32 0, align 4
@MHL_XDC_ECBUS_SPEEDS = common dso_local global i32 0, align 4
@sii8620_got_ecbus_speed = common dso_local global i32 0, align 4
@MHL_INT_RC_FEAT_REQ = common dso_local global i32 0, align 4
@MHL_INT_RC_FEAT_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_msc_mr_set_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_msc_mr_set_int(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %5 = load i32, i32* @MHL_INT_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %10 = load i32, i32* @REG_MHL_INT_0, align 4
  %11 = load i32, i32* @MHL_INT_SIZE, align 4
  %12 = call i32 @sii8620_read_buf(%struct.sii8620* %9, i32 %10, i32* %8, i32 %11)
  %13 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %14 = load i32, i32* @REG_MHL_INT_0, align 4
  %15 = load i32, i32* @MHL_INT_SIZE, align 4
  %16 = call i32 @sii8620_write_buf(%struct.sii8620* %13, i32 %14, i32* %8, i32 %15)
  %17 = load i64, i64* @MHL_INT_RCHANGE, align 8
  %18 = getelementptr inbounds i32, i32* %8, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MHL_INT_RC_DCAP_CHG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %25 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %37 [
    i32 128, label %27
    i32 129, label %34
  ]

27:                                               ; preds = %23
  %28 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %29 = load i32, i32* @MHL_XDC_ECBUS_SPEEDS, align 4
  %30 = call i32 @sii8620_mt_read_xdevcap_reg(%struct.sii8620* %28, i32 %29)
  %31 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %32 = load i32, i32* @sii8620_got_ecbus_speed, align 4
  %33 = call i32 @sii8620_mt_set_cont(%struct.sii8620* %31, i32 %32)
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %36 = call i32 @sii8620_mt_read_devcap(%struct.sii8620* %35, i32 1)
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %34, %27
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i64, i64* @MHL_INT_RCHANGE, align 8
  %41 = getelementptr inbounds i32, i32* %8, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MHL_INT_RC_FEAT_REQ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %48 = call i32 @sii8620_send_features(%struct.sii8620* %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i64, i64* @MHL_INT_RCHANGE, align 8
  %51 = getelementptr inbounds i32, i32* %8, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MHL_INT_RC_FEAT_COMPLETE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %58 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %60 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %65 = call i32 @sii8620_enable_hpd(%struct.sii8620* %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sii8620_read_buf(%struct.sii8620*, i32, i32*, i32) #2

declare dso_local i32 @sii8620_write_buf(%struct.sii8620*, i32, i32*, i32) #2

declare dso_local i32 @sii8620_mt_read_xdevcap_reg(%struct.sii8620*, i32) #2

declare dso_local i32 @sii8620_mt_set_cont(%struct.sii8620*, i32) #2

declare dso_local i32 @sii8620_mt_read_devcap(%struct.sii8620*, i32) #2

declare dso_local i32 @sii8620_send_features(%struct.sii8620*) #2

declare dso_local i32 @sii8620_enable_hpd(%struct.sii8620*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
