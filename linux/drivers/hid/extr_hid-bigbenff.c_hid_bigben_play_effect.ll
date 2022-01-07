; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-bigbenff.c_hid_bigben_play_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-bigbenff.c_hid_bigben_play_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.bigben_device = type { i8*, i8*, i32, i32 }

@FF_RUMBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @hid_bigben_play_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_bigben_play_effect(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.bigben_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.bigben_device*
  store %struct.bigben_device* %12, %struct.bigben_device** %8, align 8
  %13 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FF_RUMBLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %21 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %9, align 8
  %30 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %31 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 256
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.bigben_device*, %struct.bigben_device** %8, align 8
  %40 = getelementptr inbounds %struct.bigben_device, %struct.bigben_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %19
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.bigben_device*, %struct.bigben_device** %8, align 8
  %46 = getelementptr inbounds %struct.bigben_device, %struct.bigben_device* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43, %19
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.bigben_device*, %struct.bigben_device** %8, align 8
  %52 = getelementptr inbounds %struct.bigben_device, %struct.bigben_device* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.bigben_device*, %struct.bigben_device** %8, align 8
  %55 = getelementptr inbounds %struct.bigben_device, %struct.bigben_device* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.bigben_device*, %struct.bigben_device** %8, align 8
  %57 = getelementptr inbounds %struct.bigben_device, %struct.bigben_device* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load %struct.bigben_device*, %struct.bigben_device** %8, align 8
  %59 = getelementptr inbounds %struct.bigben_device, %struct.bigben_device* %58, i32 0, i32 3
  %60 = call i32 @schedule_work(i32* %59)
  br label %61

61:                                               ; preds = %49, %43
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
