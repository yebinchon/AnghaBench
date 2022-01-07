; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_init_zones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_init_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32, %struct.dm_zone*, %struct.dmz_dev* }
%struct.dm_zone = type { i32 }
%struct.dmz_dev = type { i32, i32, i64, i64, i32 }
%struct.blk_zone = type { i32 }

@DMZ_BLOCK_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Using %zu B for zone information\00", align 1
@DMZ_REPORT_NR_ZONES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Report zones failed %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to get correct zone information\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*)* @dmz_init_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_init_zones(%struct.dmz_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dmz_dev*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca %struct.blk_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  %11 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %12 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %11, i32 0, i32 3
  %13 = load %struct.dmz_dev*, %struct.dmz_dev** %12, align 8
  store %struct.dmz_dev* %13, %struct.dmz_dev** %4, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %15 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 3
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %19 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %21 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DMZ_BLOCK_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %26 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %28 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kcalloc(i32 %29, i32 4, i32 %30)
  %32 = bitcast i8* %31 to %struct.dm_zone*
  %33 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %34 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %33, i32 0, i32 2
  store %struct.dm_zone* %32, %struct.dm_zone** %34, align 8
  %35 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %36 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %35, i32 0, i32 2
  %37 = load %struct.dm_zone*, %struct.dm_zone** %36, align 8
  %38 = icmp ne %struct.dm_zone* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %139

42:                                               ; preds = %1
  %43 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %44 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %45 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @dmz_dev_info(%struct.dmz_dev* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @DMZ_REPORT_NR_ZONES, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kcalloc(i32 %52, i32 4, i32 %53)
  %55 = bitcast i8* %54 to %struct.blk_zone*
  store %struct.blk_zone* %55, %struct.blk_zone** %6, align 8
  %56 = load %struct.blk_zone*, %struct.blk_zone** %6, align 8
  %57 = icmp ne %struct.blk_zone* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %42
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %129

61:                                               ; preds = %42
  %62 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %63 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %62, i32 0, i32 2
  %64 = load %struct.dm_zone*, %struct.dm_zone** %63, align 8
  store %struct.dm_zone* %64, %struct.dm_zone** %5, align 8
  br label %65

65:                                               ; preds = %116, %61
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %68 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %65
  %72 = load i32, i32* @DMZ_REPORT_NR_ZONES, align 4
  store i32 %72, i32* %7, align 4
  %73 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %74 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.blk_zone*, %struct.blk_zone** %6, align 8
  %78 = call i32 @blkdev_report_zones(i32 %75, i64 %76, %struct.blk_zone* %77, i32* %7)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (%struct.dmz_dev*, i8*, ...) @dmz_dev_err(%struct.dmz_dev* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %129

85:                                               ; preds = %71
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  br label %117

89:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %113, %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %96 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %97 = load %struct.blk_zone*, %struct.blk_zone** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %97, i64 %99
  %101 = call i32 @dmz_init_zone(%struct.dmz_metadata* %95, %struct.dm_zone* %96, %struct.blk_zone* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %129

105:                                              ; preds = %94
  %106 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %107 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %8, align 8
  %111 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %112 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %111, i32 1
  store %struct.dm_zone* %112, %struct.dm_zone** %5, align 8
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %90

116:                                              ; preds = %90
  br label %65

117:                                              ; preds = %88, %65
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %120 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %118, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %125 = call i32 (%struct.dmz_dev*, i8*, ...) @dmz_dev_err(%struct.dmz_dev* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @ENXIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %123, %117
  br label %129

129:                                              ; preds = %128, %104, %81, %58
  %130 = load %struct.blk_zone*, %struct.blk_zone** %6, align 8
  %131 = call i32 @kfree(%struct.blk_zone* %130)
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %136 = call i32 @dmz_drop_zones(%struct.dmz_metadata* %135)
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %39
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dmz_dev_info(%struct.dmz_dev*, i8*, i32) #1

declare dso_local i32 @blkdev_report_zones(i32, i64, %struct.blk_zone*, i32*) #1

declare dso_local i32 @dmz_dev_err(%struct.dmz_dev*, i8*, ...) #1

declare dso_local i32 @dmz_init_zone(%struct.dmz_metadata*, %struct.dm_zone*, %struct.blk_zone*) #1

declare dso_local i32 @kfree(%struct.blk_zone*) #1

declare dso_local i32 @dmz_drop_zones(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
