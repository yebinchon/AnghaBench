; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_diversity_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_diversity_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state* }
%struct.dib7000m_state = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [64 x i8] c"diversity combination deactivated - forced by COFDM parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib7000m_set_diversity_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_set_diversity_in(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib7000m_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dib7000m_state*, %struct.dib7000m_state** %7, align 8
  store %struct.dib7000m_state* %8, %struct.dib7000m_state** %5, align 8
  %9 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %10 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %19 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %15
  %23 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %24 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %25 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 263, %26
  %28 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %23, i64 %27, i32 6)
  %29 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %30 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %31 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 264, %32
  %34 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %29, i64 %33, i32 6)
  %35 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %36 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %37 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 266, %38
  %40 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %41 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 4
  %44 = or i32 %43, 4
  %45 = or i32 %44, 2
  %46 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %35, i64 %39, i32 %45)
  br label %66

47:                                               ; preds = %15
  %48 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %49 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %50 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 263, %51
  %53 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %48, i64 %52, i32 1)
  %54 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %55 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %56 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 264, %57
  %59 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %54, i64 %58, i32 0)
  %60 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %61 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %62 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 266, %63
  %65 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %60, i64 %64, i32 0)
  br label %66

66:                                               ; preds = %47, %22
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
