; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_bio_alloc_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_bio_alloc_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.mddev = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.mddev*)* @md_bio_alloc_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @md_bio_alloc_sync(%struct.mddev* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %4 = load %struct.mddev*, %struct.mddev** %3, align 8
  %5 = icmp ne %struct.mddev* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 0
  %9 = call i32 @bioset_initialized(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6, %1
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = call %struct.bio* @bio_alloc(i32 %12, i32 1)
  store %struct.bio* %13, %struct.bio** %2, align 8
  br label %19

14:                                               ; preds = %6
  %15 = load i32, i32* @GFP_NOIO, align 4
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 0
  %18 = call %struct.bio* @bio_alloc_bioset(i32 %15, i32 1, i32* %17)
  store %struct.bio* %18, %struct.bio** %2, align 8
  br label %19

19:                                               ; preds = %14, %11
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  ret %struct.bio* %20
}

declare dso_local i32 @bioset_initialized(i32*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
