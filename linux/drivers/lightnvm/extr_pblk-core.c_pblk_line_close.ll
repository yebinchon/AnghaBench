; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_lun*, %struct.pblk_line_mgmt, %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_lun = type { i32 }
%struct.pblk_line_mgmt = type { i32, i32, i32, i32 }
%struct.pblk_line_meta = type { i32, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i64, i32, i32, %struct.TYPE_2__*, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }

@PBLK_LINESTATE_OPEN = common dso_local global i64 0, align 8
@PBLK_LINESTATE_CLOSED = common dso_local global i64 0, align 8
@NVM_CHK_ST_OFFLINE = common dso_local global i32 0, align 4
@NVM_CHK_ST_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_line_close(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca %struct.pblk_line_meta*, align 8
  %8 = alloca %struct.pblk_line_mgmt*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pblk_lun*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %14 = load %struct.pblk*, %struct.pblk** %3, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 3
  %16 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %15, align 8
  store %struct.nvm_tgt_dev* %16, %struct.nvm_tgt_dev** %5, align 8
  %17 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %18 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %17, i32 0, i32 0
  store %struct.nvm_geo* %18, %struct.nvm_geo** %6, align 8
  %19 = load %struct.pblk*, %struct.pblk** %3, align 8
  %20 = getelementptr inbounds %struct.pblk, %struct.pblk* %19, i32 0, i32 2
  store %struct.pblk_line_meta* %20, %struct.pblk_line_meta** %7, align 8
  %21 = load %struct.pblk*, %struct.pblk** %3, align 8
  %22 = getelementptr inbounds %struct.pblk, %struct.pblk* %21, i32 0, i32 1
  store %struct.pblk_line_mgmt* %22, %struct.pblk_line_mgmt** %8, align 8
  %23 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %24 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %23, i32 0, i32 2
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %27 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %30 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %29, i32 0, i32 3
  %31 = call i32 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %37 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %40 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %43 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %42, i32 0, i32 2
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %46 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PBLK_LINESTATE_OPEN, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load i64, i64* @PBLK_LINESTATE_CLOSED, align 8
  %53 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %54 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pblk*, %struct.pblk** %3, align 8
  %56 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %57 = call %struct.list_head* @pblk_line_gc_list(%struct.pblk* %55, %struct.pblk_line* %56)
  store %struct.list_head* %57, %struct.list_head** %9, align 8
  %58 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %59 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %58, i32 0, i32 7
  %60 = load %struct.list_head*, %struct.list_head** %9, align 8
  %61 = call i32 @list_add_tail(i32* %59, %struct.list_head* %60)
  %62 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %63 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %66 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mempool_free(i32* %64, i32 %67)
  %69 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %70 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %69, i32 0, i32 6
  store i32* null, i32** %70, align 8
  %71 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %72 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %71, i32 0, i32 5
  store i32* null, i32** %72, align 8
  %73 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %74 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %73, i32 0, i32 4
  store i32* null, i32** %74, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %108, %2
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %78 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %75
  %82 = load %struct.pblk*, %struct.pblk** %3, align 8
  %83 = getelementptr inbounds %struct.pblk, %struct.pblk* %82, i32 0, i32 0
  %84 = load %struct.pblk_lun*, %struct.pblk_lun** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %84, i64 %86
  store %struct.pblk_lun* %87, %struct.pblk_lun** %11, align 8
  %88 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %89 = load %struct.pblk_lun*, %struct.pblk_lun** %11, align 8
  %90 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %88, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %94 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @NVM_CHK_ST_OFFLINE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %81
  %106 = load i32, i32* @NVM_CHK_ST_CLOSED, align 4
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %105, %81
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %75

111:                                              ; preds = %75
  %112 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %113 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %116 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.pblk*, %struct.pblk** %3, align 8
  %119 = call i32 @pblk_disk_name(%struct.pblk* %118)
  %120 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %121 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %124 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @trace_pblk_line_state(i32 %119, i32 %122, i64 %125)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.list_head* @pblk_line_gc_list(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @mempool_free(i32*, i32) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i64) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
