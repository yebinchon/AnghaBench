; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_autosearch_is_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_autosearch_is_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state* }
%struct.dib7000m_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000m_autosearch_is_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_autosearch_is_irq(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib7000m_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  store %struct.dib7000m_state* %7, %struct.dib7000m_state** %4, align 8
  %8 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %9 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 16384
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %14 = call i32 @dib7000m_autosearch_irq(%struct.dib7000m_state* %13, i32 1793)
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %17 = call i32 @dib7000m_autosearch_irq(%struct.dib7000m_state* %16, i32 537)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @dib7000m_autosearch_irq(%struct.dib7000m_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
