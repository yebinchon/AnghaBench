; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_init_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_init_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.dm_zone*, i32, i32, %struct.dmz_dev* }
%struct.dmz_dev = type { i64, i64 }
%struct.dm_zone = type { i64, i32, i32, i32, i32 }
%struct.blk_zone = type { i64, i64, i64, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@DMZ_MAP_UNMAPPED = common dso_local global i32 0, align 4
@BLK_ZONE_TYPE_CONVENTIONAL = common dso_local global i64 0, align 8
@DMZ_RND = common dso_local global i32 0, align 4
@BLK_ZONE_TYPE_SEQWRITE_REQ = common dso_local global i64 0, align 8
@BLK_ZONE_TYPE_SEQWRITE_PREF = common dso_local global i64 0, align 8
@DMZ_SEQ = common dso_local global i32 0, align 4
@BLK_ZONE_COND_OFFLINE = common dso_local global i64 0, align 8
@DMZ_OFFLINE = common dso_local global i32 0, align 4
@BLK_ZONE_COND_READONLY = common dso_local global i64 0, align 8
@DMZ_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.dm_zone*, %struct.blk_zone*)* @dmz_init_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_init_zone(%struct.dmz_metadata* %0, %struct.dm_zone* %1, %struct.blk_zone* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_metadata*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca %struct.blk_zone*, align 8
  %8 = alloca %struct.dmz_dev*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store %struct.blk_zone* %2, %struct.blk_zone** %7, align 8
  %9 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %10 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %9, i32 0, i32 3
  %11 = load %struct.dmz_dev*, %struct.dmz_dev** %10, align 8
  store %struct.dmz_dev* %11, %struct.dmz_dev** %8, align 8
  %12 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %13 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %16 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %21 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %24 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %28 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %153

32:                                               ; preds = %19
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %153

35:                                               ; preds = %3
  %36 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %37 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %36, i32 0, i32 4
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %40 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %39, i32 0, i32 3
  %41 = call i32 @atomic_set(i32* %40, i32 0)
  %42 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %43 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %44 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %46 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BLK_ZONE_TYPE_CONVENTIONAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load i32, i32* @DMZ_RND, align 4
  %52 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %53 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %52, i32 0, i32 1
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %56 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %80

59:                                               ; preds = %35
  %60 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %61 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BLK_ZONE_TYPE_SEQWRITE_REQ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %67 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BLK_ZONE_TYPE_SEQWRITE_PREF, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @DMZ_SEQ, align 4
  %73 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %74 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %73, i32 0, i32 1
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  br label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @ENXIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %153

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %50
  %81 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %82 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BLK_ZONE_COND_OFFLINE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i32, i32* @DMZ_OFFLINE, align 4
  %88 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %89 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %88, i32 0, i32 1
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  br label %103

91:                                               ; preds = %80
  %92 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %93 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BLK_ZONE_COND_READONLY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i32, i32* @DMZ_READ_ONLY, align 4
  %99 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %100 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %99, i32 0, i32 1
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  br label %102

102:                                              ; preds = %97, %91
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %105 = call i64 @dmz_is_rnd(%struct.dm_zone* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %109 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %121

110:                                              ; preds = %103
  %111 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %112 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %115 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = call i64 @dmz_sect2blk(i64 %117)
  %119 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %120 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %110, %107
  %122 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %123 = call i32 @dmz_is_offline(%struct.dm_zone* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %152, label %125

125:                                              ; preds = %121
  %126 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %127 = call i32 @dmz_is_readonly(%struct.dm_zone* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %152, label %129

129:                                              ; preds = %125
  %130 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %131 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %135 = call i64 @dmz_is_rnd(%struct.dm_zone* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %129
  %138 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %139 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %143 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %142, i32 0, i32 0
  %144 = load %struct.dm_zone*, %struct.dm_zone** %143, align 8
  %145 = icmp ne %struct.dm_zone* %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %137
  %147 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %148 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %149 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %148, i32 0, i32 0
  store %struct.dm_zone* %147, %struct.dm_zone** %149, align 8
  br label %150

150:                                              ; preds = %146, %137
  br label %151

151:                                              ; preds = %150, %129
  br label %152

152:                                              ; preds = %151, %125, %121
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %76, %32, %31
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @dmz_is_rnd(%struct.dm_zone*) #1

declare dso_local i64 @dmz_sect2blk(i64) #1

declare dso_local i32 @dmz_is_offline(%struct.dm_zone*) #1

declare dso_local i32 @dmz_is_readonly(%struct.dm_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
