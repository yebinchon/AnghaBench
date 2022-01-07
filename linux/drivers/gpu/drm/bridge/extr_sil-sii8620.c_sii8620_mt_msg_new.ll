; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mt_msg_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mt_msg_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620_mt_msg = type { i32 }
%struct.sii8620 = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sii8620_mt_msg* (%struct.sii8620*)* @sii8620_mt_msg_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sii8620_mt_msg* @sii8620_mt_msg_new(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca %struct.sii8620_mt_msg*, align 8
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.sii8620_mt_msg* @kzalloc(i32 4, i32 %4)
  store %struct.sii8620_mt_msg* %5, %struct.sii8620_mt_msg** %3, align 8
  %6 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %3, align 8
  %7 = icmp ne %struct.sii8620_mt_msg* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %12 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %3, align 8
  %15 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %14, i32 0, i32 0
  %16 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %17 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %16, i32 0, i32 0
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  br label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %3, align 8
  ret %struct.sii8620_mt_msg* %20
}

declare dso_local %struct.sii8620_mt_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
