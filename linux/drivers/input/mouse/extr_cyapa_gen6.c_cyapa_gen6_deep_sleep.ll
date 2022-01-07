; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_deep_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_deep_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }

@__const.cyapa_gen6_deep_sleep.ping = private unnamed_addr constant [7 x i32] [i32 4, i32 0, i32 5, i32 0, i32 47, i32 0, i32 0], align 16
@PIP_DEEP_SLEEP_STATE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32)* @cyapa_gen6_deep_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen6_deep_sleep(%struct.cyapa* %0, i32 %1) #0 {
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i32], align 16
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast [7 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([7 x i32]* @__const.cyapa_gen6_deep_sleep.ping to i8*), i64 28, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PIP_DEEP_SLEEP_STATE_ON, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %12 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %13 = call i32 @cyapa_i2c_pip_write(%struct.cyapa* %11, i32* %12, i32 28)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @cyapa_pip_deep_sleep(%struct.cyapa* %15, i32 %16)
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cyapa_i2c_pip_write(%struct.cyapa*, i32*, i32) #2

declare dso_local i32 @cyapa_pip_deep_sleep(%struct.cyapa*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
