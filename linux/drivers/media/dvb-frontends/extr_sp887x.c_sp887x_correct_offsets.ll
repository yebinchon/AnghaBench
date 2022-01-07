; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_correct_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_correct_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp887x_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i64 }

@sp887x_correct_offsets.srate_correction = internal constant [3 x i32] [i32 1879617, i32 4544878, i32 8098561], align 4
@INVERSION_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sp887x_state*, %struct.dtv_frontend_properties*, i32)* @sp887x_correct_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp887x_correct_offsets(%struct.sp887x_state* %0, %struct.dtv_frontend_properties* %1, i32 %2) #0 {
  %4 = alloca %struct.sp887x_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sp887x_state* %0, %struct.sp887x_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %8, align 4
  store i32 61003, i32* %9, align 4
  store i32 36000000, i32* %10, align 4
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %21 [
    i32 8000000, label %22
    i32 7000000, label %23
    i32 6000000, label %24
  ]

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %3, %21
  store i32 0, i32* %7, align 4
  br label %25

23:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %25

24:                                               ; preds = %3
  store i32 2, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %23, %22
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INVERSION_ON, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %11, align 4
  %41 = sdiv i32 %40, 333
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @divide(i32 %41, i32 %42, i32* null, i32* %12)
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INVERSION_ON, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %39
  %53 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* @sp887x_correct_offsets.srate_correction, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 12
  %59 = call i32 @sp887x_writereg(%struct.sp887x_state* %53, i32 793, i32 %58)
  %60 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* @sp887x_correct_offsets.srate_correction, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 4095
  %66 = call i32 @sp887x_writereg(%struct.sp887x_state* %60, i32 794, i32 %65)
  %67 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 12
  %70 = call i32 @sp887x_writereg(%struct.sp887x_state* %67, i32 777, i32 %69)
  %71 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 4095
  %74 = call i32 @sp887x_writereg(%struct.sp887x_state* %71, i32 778, i32 %73)
  ret void
}

declare dso_local i32 @divide(i32, i32, i32*, i32*) #1

declare dso_local i32 @sp887x_writereg(%struct.sp887x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
