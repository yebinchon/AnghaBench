; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_get_first_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_get_first_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_line = type { i8*, i64 }
%struct.pblk = type { i32, i32, %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32, %struct.TYPE_2__*, i32, %struct.pblk_line* }
%struct.TYPE_2__ = type { i8*, i64 }

@PBLK_LINETYPE_DATA = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pblk_line* @pblk_line_get_first_data(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk_line*, align 8
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line_mgmt*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %6 = load %struct.pblk*, %struct.pblk** %3, align 8
  %7 = getelementptr inbounds %struct.pblk, %struct.pblk* %6, i32 0, i32 2
  store %struct.pblk_line_mgmt* %7, %struct.pblk_line_mgmt** %4, align 8
  %8 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %9 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = call i8* @pblk_line_get(%struct.pblk* %11)
  %13 = bitcast i8* %12 to %struct.pblk_line*
  store %struct.pblk_line* %13, %struct.pblk_line** %5, align 8
  %14 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %15 = icmp ne %struct.pblk_line* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %18 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  store %struct.pblk_line* null, %struct.pblk_line** %2, align 8
  br label %123

20:                                               ; preds = %1
  %21 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %22 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %27 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** @PBLK_LINETYPE_DATA, align 8
  %29 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %30 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %32 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %33 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %32, i32 0, i32 3
  store %struct.pblk_line* %31, %struct.pblk_line** %33, align 8
  %34 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %35 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %36 = load %struct.pblk*, %struct.pblk** %3, align 8
  %37 = getelementptr inbounds %struct.pblk, %struct.pblk* %36, i32 0, i32 1
  %38 = call i32 @pblk_line_setup_metadata(%struct.pblk_line* %34, %struct.pblk_line_mgmt* %35, i32* %37)
  %39 = load %struct.pblk*, %struct.pblk** %3, align 8
  %40 = call i8* @pblk_line_get(%struct.pblk* %39)
  %41 = bitcast i8* %40 to %struct.TYPE_2__*
  %42 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %43 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %42, i32 0, i32 1
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %45 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %20
  %49 = load %struct.pblk*, %struct.pblk** %3, align 8
  %50 = call i32 @pblk_set_space_limit(%struct.pblk* %49)
  %51 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %52 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %51, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %52, align 8
  br label %68

53:                                               ; preds = %20
  %54 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %55 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = sext i32 %56 to i64
  %59 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %60 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i64 %58, i64* %62, align 8
  %63 = load i8*, i8** @PBLK_LINETYPE_DATA, align 8
  %64 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %65 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %53, %48
  %69 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %70 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.pblk*, %struct.pblk** %3, align 8
  %73 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %74 = call i64 @pblk_line_alloc_bitmaps(%struct.pblk* %72, %struct.pblk_line* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store %struct.pblk_line* null, %struct.pblk_line** %2, align 8
  br label %123

77:                                               ; preds = %68
  %78 = load %struct.pblk*, %struct.pblk** %3, align 8
  %79 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %80 = call i64 @pblk_line_erase(%struct.pblk* %78, %struct.pblk_line* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.pblk*, %struct.pblk** %3, align 8
  %84 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %85 = call %struct.pblk_line* @pblk_line_retry(%struct.pblk* %83, %struct.pblk_line* %84)
  store %struct.pblk_line* %85, %struct.pblk_line** %5, align 8
  %86 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %87 = icmp ne %struct.pblk_line* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store %struct.pblk_line* null, %struct.pblk_line** %2, align 8
  br label %123

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %77
  br label %91

91:                                               ; preds = %116, %103, %90
  %92 = load %struct.pblk*, %struct.pblk** %3, align 8
  %93 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %94 = call i32 @pblk_line_init_metadata(%struct.pblk* %92, %struct.pblk_line* %93, i32* null)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load %struct.pblk*, %struct.pblk** %3, align 8
  %98 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %99 = call %struct.pblk_line* @pblk_line_retry(%struct.pblk* %97, %struct.pblk_line* %98)
  store %struct.pblk_line* %99, %struct.pblk_line** %5, align 8
  %100 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %101 = icmp ne %struct.pblk_line* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  store %struct.pblk_line* null, %struct.pblk_line** %2, align 8
  br label %123

103:                                              ; preds = %96
  br label %91

104:                                              ; preds = %91
  %105 = load %struct.pblk*, %struct.pblk** %3, align 8
  %106 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %107 = call i32 @pblk_line_init_bb(%struct.pblk* %105, %struct.pblk_line* %106, i32 1)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %104
  %110 = load %struct.pblk*, %struct.pblk** %3, align 8
  %111 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %112 = call %struct.pblk_line* @pblk_line_retry(%struct.pblk* %110, %struct.pblk_line* %111)
  store %struct.pblk_line* %112, %struct.pblk_line** %5, align 8
  %113 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %114 = icmp ne %struct.pblk_line* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store %struct.pblk_line* null, %struct.pblk_line** %2, align 8
  br label %123

116:                                              ; preds = %109
  br label %91

117:                                              ; preds = %104
  %118 = load %struct.pblk*, %struct.pblk** %3, align 8
  %119 = getelementptr inbounds %struct.pblk, %struct.pblk* %118, i32 0, i32 0
  %120 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %121 = call i32 @pblk_rl_free_lines_dec(i32* %119, %struct.pblk_line* %120, i32 1)
  %122 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  store %struct.pblk_line* %122, %struct.pblk_line** %2, align 8
  br label %123

123:                                              ; preds = %117, %115, %102, %88, %76, %16
  %124 = load %struct.pblk_line*, %struct.pblk_line** %2, align 8
  ret %struct.pblk_line* %124
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @pblk_line_get(%struct.pblk*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_line_setup_metadata(%struct.pblk_line*, %struct.pblk_line_mgmt*, i32*) #1

declare dso_local i32 @pblk_set_space_limit(%struct.pblk*) #1

declare dso_local i64 @pblk_line_alloc_bitmaps(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i64 @pblk_line_erase(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local %struct.pblk_line* @pblk_line_retry(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @pblk_line_init_metadata(%struct.pblk*, %struct.pblk_line*, i32*) #1

declare dso_local i32 @pblk_line_init_bb(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @pblk_rl_free_lines_dec(i32*, %struct.pblk_line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
