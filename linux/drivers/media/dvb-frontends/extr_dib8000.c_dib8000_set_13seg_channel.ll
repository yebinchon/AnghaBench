; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_13seg_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_13seg_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ana_fe_coeff_13seg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*)* @dib8000_set_13seg_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_13seg_channel(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  store i32 10240, i32* %4, align 4
  %5 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %5, i32 0, i32 0
  store i32 8191, i32* %6, align 8
  %7 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %8 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %13 = call i32 @dib8000_write_word(%struct.dib8000_state* %12, i32 180, i32 1033)
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %15 = call i32 @dib8000_write_word(%struct.dib8000_state* %14, i32 187, i32 16642)
  store i32 10240, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %25, %11
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 181, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dib8000_write_word(%struct.dib8000_state* %20, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %16

28:                                               ; preds = %16
  %29 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %30 = call i32 @dib8000_write_word(%struct.dib8000_state* %29, i32 338, i32 5217)
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %32 = call i32 @dib8000_write_word(%struct.dib8000_state* %31, i32 340, i32 518)
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %34 = call i32 @dib8000_write_word(%struct.dib8000_state* %33, i32 341, i32 39)
  %35 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %36 = call i32 @dib8000_write_word(%struct.dib8000_state* %35, i32 228, i32 0)
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %38 = call i32 @dib8000_write_word(%struct.dib8000_state* %37, i32 265, i32 31)
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %40 = call i32 @dib8000_write_word(%struct.dib8000_state* %39, i32 205, i32 8207)
  br label %41

41:                                               ; preds = %28, %1
  %42 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %43 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %52 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = xor i32 %53, -1
  %55 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %56 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %54, %57
  %59 = or i32 %58, 64
  %60 = call i32 @dib8000_write_word(%struct.dib8000_state* %50, i32 266, i32 %59)
  br label %61

61:                                               ; preds = %49, %41
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %63 = load i32, i32* @ana_fe_coeff_13seg, align 4
  %64 = call i32 @dib8000_load_ana_fe_coefs(%struct.dib8000_state* %62, i32 %63)
  ret void
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_load_ana_fe_coefs(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
