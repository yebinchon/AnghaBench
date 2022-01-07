; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_unlock_media_bay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_unlock_media_bay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32 }
%struct.media_bay_info = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlock_media_bay(%struct.macio_dev* %0) #0 {
  %2 = alloca %struct.macio_dev*, align 8
  %3 = alloca %struct.media_bay_info*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %2, align 8
  %4 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %5 = icmp eq %struct.macio_dev* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %9 = call %struct.media_bay_info* @macio_get_drvdata(%struct.macio_dev* %8)
  store %struct.media_bay_info* %9, %struct.media_bay_info** %3, align 8
  %10 = load %struct.media_bay_info*, %struct.media_bay_info** %3, align 8
  %11 = icmp eq %struct.media_bay_info* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %24

13:                                               ; preds = %7
  %14 = load %struct.media_bay_info*, %struct.media_bay_info** %3, align 8
  %15 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.media_bay_info*, %struct.media_bay_info** %3, align 8
  %20 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.media_bay_info*, %struct.media_bay_info** %3, align 8
  %22 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  br label %24

24:                                               ; preds = %6, %12, %18, %13
  ret void
}

declare dso_local %struct.media_bay_info* @macio_get_drvdata(%struct.macio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
