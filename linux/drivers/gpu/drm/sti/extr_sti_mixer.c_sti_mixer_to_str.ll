; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_mixer = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"MAIN_MIXER\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"AUX_MIXER\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"<UNKNOWN MIXER>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sti_mixer_to_str(%struct.sti_mixer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sti_mixer*, align 8
  store %struct.sti_mixer* %0, %struct.sti_mixer** %3, align 8
  %4 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %5 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %9 [
    i32 128, label %7
    i32 129, label %8
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %10

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %10

10:                                               ; preds = %9, %8, %7
  %11 = load i8*, i8** %2, align 8
  ret i8* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
