; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_packet_counter_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_packet_counter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgs8gxx_state*)* @packet_counter_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_counter_start(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca %struct.lgs8gxx_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %2, align 8
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %6 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %14 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %13, i32 48, i32* %3)
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 231
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %19, i32 48, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, 24
  store i32 %23, i32* %4, align 4
  %24 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %24, i32 48, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, 16
  store i32 %28, i32* %4, align 4
  %29 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %29, i32 48, i32 %30)
  br label %39

32:                                               ; preds = %1
  %33 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %34 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %33, i32 198, i32 1)
  %35 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %36 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %35, i32 198, i32 65)
  %37 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %38 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %37, i32 198, i32 1)
  br label %39

39:                                               ; preds = %32, %12
  ret void
}

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i32*) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
