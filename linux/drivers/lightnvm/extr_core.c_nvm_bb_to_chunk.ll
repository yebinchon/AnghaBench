; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_bb_to_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_bb_to_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32, i32 }
%struct.nvm_chk_meta = type { i32, i32, i32, i64, i32, i64 }
%struct.ppa_addr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NVM_BLK_T_BAD = common dso_local global i32 0, align 4
@NVM_BLK_T_GRWN_BAD = common dso_local global i32 0, align 4
@NVM_CHK_TP_W_SEQ = common dso_local global i32 0, align 4
@NVM_BLK_T_FREE = common dso_local global i32 0, align 4
@NVM_CHK_ST_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, i32, i32*, i32, %struct.nvm_chk_meta*)* @nvm_bb_to_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_bb_to_chunk(%struct.nvm_dev* %0, i32 %1, i32* %2, i32 %3, %struct.nvm_chk_meta* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppa_addr, align 4
  %8 = alloca %struct.nvm_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvm_chk_meta*, align 8
  %12 = alloca %struct.nvm_geo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 4
  %19 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %1, i32* %20, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvm_chk_meta* %4, %struct.nvm_chk_meta** %11, align 8
  %21 = load %struct.nvm_dev*, %struct.nvm_dev** %8, align 8
  %22 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %21, i32 0, i32 0
  store %struct.nvm_geo* %22, %struct.nvm_geo** %12, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %120, %5
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.nvm_geo*, %struct.nvm_geo** %12, align 8
  %26 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %123

29:                                               ; preds = %23
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.nvm_geo*, %struct.nvm_geo** %12, align 8
  %32 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %16, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %68, %29
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.nvm_geo*, %struct.nvm_geo** %12, align 8
  %43 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NVM_BLK_T_BAD, align 4
  %55 = load i32, i32* @NVM_BLK_T_GRWN_BAD, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %17, align 4
  br label %71

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %40

71:                                               ; preds = %59, %40
  %72 = load i32, i32* %14, align 4
  %73 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %11, align 8
  %76 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @NVM_CHK_TP_W_SEQ, align 4
  %78 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %11, align 8
  %79 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %11, align 8
  %81 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.nvm_dev*, %struct.nvm_dev** %8, align 8
  %83 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @generic_to_dev_addr(%struct.nvm_dev* %82, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %11, align 8
  %91 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nvm_dev*, %struct.nvm_dev** %8, align 8
  %93 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %11, align 8
  %97 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* @NVM_BLK_T_FREE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %71
  %102 = load %struct.nvm_dev*, %struct.nvm_dev** %8, align 8
  %103 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %11, align 8
  %104 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nvm_bb_chunk_scan(%struct.nvm_dev* %102, i32 %106, %struct.nvm_chk_meta* %103)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %6, align 4
  br label %124

112:                                              ; preds = %101
  br label %117

113:                                              ; preds = %71
  %114 = load i32, i32* @NVM_CHK_ST_OFFLINE, align 4
  %115 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %11, align 8
  %116 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %113, %112
  %118 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %11, align 8
  %119 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %118, i32 1
  store %struct.nvm_chk_meta* %119, %struct.nvm_chk_meta** %11, align 8
  br label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %23

123:                                              ; preds = %23
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %110
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @generic_to_dev_addr(%struct.nvm_dev*, i32) #1

declare dso_local i32 @nvm_bb_chunk_scan(%struct.nvm_dev*, i32, %struct.nvm_chk_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
