; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lnbp21.c_lnbp21_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lnbp21.c_lnbp21_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.lnbp21 = type { i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@LNBP21_TEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @lnbp21_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnbp21_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lnbp21*, align 8
  %7 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lnbp21*
  store %struct.lnbp21* %11, %struct.lnbp21** %6, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %14 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %15 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %14, i32 0, i32 2
  store i32* %15, i32** %13, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %18 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %19 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %35 [
    i32 129, label %22
    i32 128, label %29
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* @LNBP21_TEN, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %26 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load i32, i32* @LNBP21_TEN, align 4
  %31 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %32 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %29, %22
  %39 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %40 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %43 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %47 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %50 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %54 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i2c_transfer(i32 %55, %struct.i2c_msg* %7, i32 1)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %62

59:                                               ; preds = %38
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ]
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %35
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
