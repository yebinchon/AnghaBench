; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_notify_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_notify_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cs_char_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"data notification queue overrun (%u entries)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cs_notify_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_notify_data(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @cs_notify(i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  %7 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 1))
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = call i32 @list_empty(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 3), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  %24 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @cs_pop_entry(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  br label %10

28:                                               ; preds = %18
  %29 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 1))
  ret void
}

declare dso_local i32 @cs_notify(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @cs_pop_entry(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
