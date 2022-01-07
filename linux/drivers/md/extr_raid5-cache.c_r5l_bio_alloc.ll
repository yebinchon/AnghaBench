; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_bio_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_bio_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.r5l_log = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.r5l_log*)* @r5l_bio_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @r5l_bio_alloc(%struct.r5l_log* %0) #0 {
  %2 = alloca %struct.r5l_log*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %2, align 8
  %4 = load i32, i32* @GFP_NOIO, align 4
  %5 = load i32, i32* @BIO_MAX_PAGES, align 4
  %6 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %7 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %6, i32 0, i32 2
  %8 = call %struct.bio* @bio_alloc_bioset(i32 %4, i32 %5, i32* %7)
  store %struct.bio* %8, %struct.bio** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = load i32, i32* @REQ_OP_WRITE, align 4
  %11 = call i32 @bio_set_op_attrs(%struct.bio* %9, i32 %10, i32 0)
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %14 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bio_set_dev(%struct.bio* %12, i32 %17)
  %19 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %20 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %25 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.bio*, %struct.bio** %3, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %31
}

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
