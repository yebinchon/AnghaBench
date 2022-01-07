; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-linear.c_linear_map_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-linear.c_linear_map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.linear_c* }
%struct.linear_c = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@REQ_OP_ZONE_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.bio*)* @linear_map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linear_map_bio(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.linear_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.linear_c*, %struct.linear_c** %7, align 8
  store %struct.linear_c* %8, %struct.linear_c** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = load %struct.linear_c*, %struct.linear_c** %5, align 8
  %11 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bio_set_dev(%struct.bio* %9, i32 %14)
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = call i64 @bio_sectors(%struct.bio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = call i64 @bio_op(%struct.bio* %20)
  %22 = load i64, i64* @REQ_OP_ZONE_RESET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %19, %2
  %25 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @linear_map_sector(%struct.dm_target* %25, i32 %29)
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @linear_map_sector(%struct.dm_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
