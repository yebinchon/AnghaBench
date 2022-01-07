; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_fill_msg_report_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_fill_msg_report_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.cec_log_addrs }
%struct.cec_log_addrs = type { i32**, i32*, i32, i32* }
%struct.cec_msg = type { i32*, i32 }

@CEC_MSG_REPORT_FEATURES = common dso_local global i32 0, align 4
@CEC_OP_FEAT_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_adapter*, %struct.cec_msg*, i32)* @cec_fill_msg_report_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_fill_msg_report_features(%struct.cec_adapter* %0, %struct.cec_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca %struct.cec_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cec_log_addrs*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store %struct.cec_msg* %1, %struct.cec_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %11, i32 0, i32 0
  store %struct.cec_log_addrs* %12, %struct.cec_log_addrs** %7, align 8
  %13 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %7, align 8
  %14 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %7, align 8
  %21 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 4
  %28 = or i32 %27, 15
  %29 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %30 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %34 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %33, i32 0, i32 1
  store i32 4, i32* %34, align 8
  %35 = load i32, i32* @CEC_MSG_REPORT_FEATURES, align 4
  %36 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %37 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %45 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %43, i32* %47, align 4
  %48 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %7, align 8
  %49 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %56 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %54, i32* %58, align 4
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %97, %3
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %7, align 8
  %62 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = icmp ult i32 %60, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %59
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %75 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %78 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32 %73, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CEC_OP_FEAT_EXT, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %68
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %100

95:                                               ; preds = %91
  store i32 1, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %68
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %59

100:                                              ; preds = %94, %59
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
