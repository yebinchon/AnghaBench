; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_error_bio_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_error_bio_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio_list*, i32)* @error_bio_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_bio_list(%struct.bio_list* %0, i32 %1) #0 {
  %3 = alloca %struct.bio_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  store %struct.bio_list* %0, %struct.bio_list** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %2
  %7 = load %struct.bio_list*, %struct.bio_list** %3, align 8
  %8 = call %struct.bio* @bio_list_pop(%struct.bio_list* %7)
  store %struct.bio* %8, %struct.bio** %5, align 8
  %9 = icmp ne %struct.bio* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = call i32 @bio_endio(%struct.bio* %14)
  br label %6

16:                                               ; preds = %6
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
