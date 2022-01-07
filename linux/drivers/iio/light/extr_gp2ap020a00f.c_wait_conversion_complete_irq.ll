; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_wait_conversion_complete_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_wait_conversion_complete_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp2ap020a00f_data = type { i32, i32 }

@GP2AP020A00F_FLAG_DATA_READY = common dso_local global i32 0, align 4
@GP2AP020A00F_DATA_READY_TIMEOUT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2ap020a00f_data*)* @wait_conversion_complete_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_conversion_complete_irq(%struct.gp2ap020a00f_data* %0) #0 {
  %2 = alloca %struct.gp2ap020a00f_data*, align 8
  %3 = alloca i32, align 4
  store %struct.gp2ap020a00f_data* %0, %struct.gp2ap020a00f_data** %2, align 8
  %4 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %2, align 8
  %5 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GP2AP020A00F_FLAG_DATA_READY, align 4
  %8 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %2, align 8
  %9 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @GP2AP020A00F_DATA_READY_TIMEOUT, align 4
  %12 = call i32 @wait_event_timeout(i32 %6, i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @GP2AP020A00F_FLAG_DATA_READY, align 4
  %14 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %2, align 8
  %15 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ETIME, align 4
  %22 = sub nsw i32 0, %21
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i32 [ 0, %19 ], [ %22, %20 ]
  ret i32 %24
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
