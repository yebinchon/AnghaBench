; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_cec_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_cec_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.tda9950_priv* }
%struct.tda9950_priv = type { i32 }
%struct.cec_msg = type { i32, i32 }

@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@CDR1_REQ = common dso_local global i32 0, align 4
@REG_CCONR = common dso_local global i32 0, align 4
@REG_CDR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @tda9950_cec_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9950_cec_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca %struct.tda9950_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %12 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %12, i32 0, i32 0
  %14 = load %struct.tda9950_priv*, %struct.tda9950_priv** %13, align 8
  store %struct.tda9950_priv* %14, %struct.tda9950_priv** %9, align 8
  %15 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %16 = add nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %21 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 2, %22
  %24 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %23, i32* %24, align 16
  %25 = load i32, i32* @CDR1_REQ, align 4
  %26 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %19, i64 2
  %28 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %29 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %32 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32* %27, i32 %30, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 5
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 5, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.tda9950_priv*, %struct.tda9950_priv** %9, align 8
  %40 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @REG_CCONR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @tda9950_write(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.tda9950_priv*, %struct.tda9950_priv** %9, align 8
  %46 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @REG_CDR0, align 4
  %49 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %50 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 2, %51
  %53 = call i32 @tda9950_write_range(i32 %47, i32 %48, i32* %19, i32 %52)
  %54 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @tda9950_write(i32, i32, i32) #2

declare dso_local i32 @tda9950_write_range(i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
