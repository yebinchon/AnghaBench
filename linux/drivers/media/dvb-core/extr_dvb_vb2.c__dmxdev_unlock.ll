; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__dmxdev_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__dmxdev_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.dvb_vb2_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @_dmxdev_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dmxdev_unlock(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.dvb_vb2_ctx*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.dvb_vb2_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.dvb_vb2_ctx* %5, %struct.dvb_vb2_ctx** %3, align 8
  %6 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %6, i32 0, i32 1
  %8 = call i64 @mutex_is_locked(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %11, i32 0, i32 1
  %13 = call i32 @mutex_unlock(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17)
  ret void
}

declare dso_local %struct.dvb_vb2_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @mutex_is_locked(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
