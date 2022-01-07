; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_lookup_secondary_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_lookup_secondary_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.dmz_mblock*, i64, %struct.TYPE_5__* }
%struct.dmz_mblock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMZ_MAGIC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*)* @dmz_lookup_secondary_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_lookup_secondary_sb(%struct.dmz_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_mblock*, align 8
  %6 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  %7 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %8 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %13 = call %struct.dmz_mblock* @dmz_alloc_mblock(%struct.dmz_metadata* %12, i32 0)
  store %struct.dmz_mblock* %13, %struct.dmz_mblock** %5, align 8
  %14 = load %struct.dmz_mblock*, %struct.dmz_mblock** %5, align 8
  %15 = icmp ne %struct.dmz_mblock* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %97

19:                                               ; preds = %1
  %20 = load %struct.dmz_mblock*, %struct.dmz_mblock** %5, align 8
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %22 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store %struct.dmz_mblock* %20, %struct.dmz_mblock** %25, align 8
  %26 = load %struct.dmz_mblock*, %struct.dmz_mblock** %5, align 8
  %27 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %30 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %35 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %44 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 %42, i64* %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %83, %19
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %51 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %48
  %56 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %57 = call i64 @dmz_read_sb(%struct.dmz_metadata* %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %86

60:                                               ; preds = %55
  %61 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %62 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  %70 = load i64, i64* @DMZ_MAGIC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %97

73:                                               ; preds = %60
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %77 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %75
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %48

86:                                               ; preds = %59, %48
  %87 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %88 = load %struct.dmz_mblock*, %struct.dmz_mblock** %5, align 8
  %89 = call i32 @dmz_free_mblock(%struct.dmz_metadata* %87, %struct.dmz_mblock* %88)
  %90 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %91 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store %struct.dmz_mblock* null, %struct.dmz_mblock** %94, align 8
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %86, %72, %16
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.dmz_mblock* @dmz_alloc_mblock(%struct.dmz_metadata*, i32) #1

declare dso_local i64 @dmz_read_sb(%struct.dmz_metadata*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dmz_free_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
