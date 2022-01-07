; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dmz_mblock*, i32 }
%struct.dmz_mblock = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, i32)* @dmz_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_get_sb(%struct.dmz_metadata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmz_mblock*, align 8
  %7 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %9 = call %struct.dmz_mblock* @dmz_alloc_mblock(%struct.dmz_metadata* %8, i32 0)
  store %struct.dmz_mblock* %9, %struct.dmz_mblock** %6, align 8
  %10 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %11 = icmp ne %struct.dmz_mblock* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %17 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %18 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.dmz_mblock* %16, %struct.dmz_mblock** %23, align 8
  %24 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %25 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %28 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %26, i32* %33, align 8
  %34 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dmz_read_sb(%struct.dmz_metadata* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %15
  %40 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %41 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %42 = call i32 @dmz_free_mblock(%struct.dmz_metadata* %40, %struct.dmz_mblock* %41)
  %43 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %44 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.dmz_mblock* null, %struct.dmz_mblock** %49, align 8
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %39, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.dmz_mblock* @dmz_alloc_mblock(%struct.dmz_metadata*, i32) #1

declare dso_local i32 @dmz_read_sb(%struct.dmz_metadata*, i32) #1

declare dso_local i32 @dmz_free_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
