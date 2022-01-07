; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_dispatch_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_dispatch_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_list = type { i32 }
%struct.mirror_set = type { i32 }
%struct.bio = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bio_list*)* @dispatch_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_bios(i8* %0, %struct.bio_list* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca %struct.mirror_set*, align 8
  %6 = alloca %struct.bio*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mirror_set*
  store %struct.mirror_set* %8, %struct.mirror_set** %5, align 8
  br label %9

9:                                                ; preds = %13, %2
  %10 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %11 = call %struct.bio* @bio_list_pop(%struct.bio_list* %10)
  store %struct.bio* %11, %struct.bio** %6, align 8
  %12 = icmp ne %struct.bio* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load %struct.mirror_set*, %struct.mirror_set** %5, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = load i32, i32* @WRITE, align 4
  %17 = call i32 @queue_bio(%struct.mirror_set* %14, %struct.bio* %15, i32 %16)
  br label %9

18:                                               ; preds = %9
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @queue_bio(%struct.mirror_set*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
