; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_lines_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_lines_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line*, %struct.pblk_line*, %struct.pblk_line_mgmt }
%struct.pblk_line = type { i32, i32 }
%struct.pblk_line_mgmt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"too many bad blocks prevent for sane instance\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*)* @pblk_lines_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_lines_init(%struct.pblk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line_mgmt*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 2
  store %struct.pblk_line_mgmt* %11, %struct.pblk_line_mgmt** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.pblk*, %struct.pblk** %3, align 8
  %13 = call i32 @pblk_line_meta_init(%struct.pblk* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %2, align 4
  br label %146

18:                                               ; preds = %1
  %19 = load %struct.pblk*, %struct.pblk** %3, align 8
  %20 = call i32 @pblk_line_mg_init(%struct.pblk* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %2, align 4
  br label %146

25:                                               ; preds = %18
  %26 = load %struct.pblk*, %struct.pblk** %3, align 8
  %27 = call i32 @pblk_luns_init(%struct.pblk* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %142

31:                                               ; preds = %25
  %32 = load %struct.pblk*, %struct.pblk** %3, align 8
  %33 = call i8* @pblk_get_chunk_meta(%struct.pblk* %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %9, align 4
  br label %137

40:                                               ; preds = %31
  %41 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %42 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.pblk_line* @kcalloc(i32 %43, i32 8, i32 %44)
  %46 = load %struct.pblk*, %struct.pblk** %3, align 8
  %47 = getelementptr inbounds %struct.pblk, %struct.pblk* %46, i32 0, i32 1
  store %struct.pblk_line* %45, %struct.pblk_line** %47, align 8
  %48 = load %struct.pblk*, %struct.pblk** %3, align 8
  %49 = getelementptr inbounds %struct.pblk, %struct.pblk* %48, i32 0, i32 1
  %50 = load %struct.pblk_line*, %struct.pblk_line** %49, align 8
  %51 = icmp ne %struct.pblk_line* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %134

55:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %94, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %59 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %56
  %63 = load %struct.pblk*, %struct.pblk** %3, align 8
  %64 = getelementptr inbounds %struct.pblk, %struct.pblk* %63, i32 0, i32 1
  %65 = load %struct.pblk_line*, %struct.pblk_line** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %65, i64 %67
  store %struct.pblk_line* %68, %struct.pblk_line** %5, align 8
  %69 = load %struct.pblk*, %struct.pblk** %3, align 8
  %70 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %71 = call i32 @pblk_alloc_line_meta(%struct.pblk* %69, %struct.pblk_line* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %115

75:                                               ; preds = %62
  %76 = load %struct.pblk*, %struct.pblk** %3, align 8
  %77 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @pblk_setup_line_meta(%struct.pblk* %76, %struct.pblk_line* %77, i8* %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load %struct.pblk*, %struct.pblk** %3, align 8
  %86 = call i32 @pblk_disk_name(%struct.pblk* %85)
  %87 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %88 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %91 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @trace_pblk_line_state(i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %75
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %56

97:                                               ; preds = %56
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load %struct.pblk*, %struct.pblk** %3, align 8
  %102 = call i32 @pblk_err(%struct.pblk* %101, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @EINTR, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %115

105:                                              ; preds = %97
  %106 = load %struct.pblk*, %struct.pblk** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @pblk_set_provision(%struct.pblk* %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %115

112:                                              ; preds = %105
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @vfree(i8* %113)
  store i32 0, i32* %2, align 4
  br label %146

115:                                              ; preds = %111, %100, %74
  br label %116

116:                                              ; preds = %120, %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %8, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %122 = load %struct.pblk*, %struct.pblk** %3, align 8
  %123 = getelementptr inbounds %struct.pblk, %struct.pblk* %122, i32 0, i32 1
  %124 = load %struct.pblk_line*, %struct.pblk_line** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %124, i64 %126
  %128 = call i32 @pblk_line_meta_free(%struct.pblk_line_mgmt* %121, %struct.pblk_line* %127)
  br label %116

129:                                              ; preds = %116
  %130 = load %struct.pblk*, %struct.pblk** %3, align 8
  %131 = getelementptr inbounds %struct.pblk, %struct.pblk* %130, i32 0, i32 1
  %132 = load %struct.pblk_line*, %struct.pblk_line** %131, align 8
  %133 = call i32 @kfree(%struct.pblk_line* %132)
  br label %134

134:                                              ; preds = %129, %52
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @vfree(i8* %135)
  br label %137

137:                                              ; preds = %134, %37
  %138 = load %struct.pblk*, %struct.pblk** %3, align 8
  %139 = getelementptr inbounds %struct.pblk, %struct.pblk* %138, i32 0, i32 0
  %140 = load %struct.pblk_line*, %struct.pblk_line** %139, align 8
  %141 = call i32 @kfree(%struct.pblk_line* %140)
  br label %142

142:                                              ; preds = %137, %30
  %143 = load %struct.pblk*, %struct.pblk** %3, align 8
  %144 = call i32 @pblk_line_mg_free(%struct.pblk* %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %112, %23, %16
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @pblk_line_meta_init(%struct.pblk*) #1

declare dso_local i32 @pblk_line_mg_init(%struct.pblk*) #1

declare dso_local i32 @pblk_luns_init(%struct.pblk*) #1

declare dso_local i8* @pblk_get_chunk_meta(%struct.pblk*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.pblk_line* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pblk_alloc_line_meta(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i64 @pblk_setup_line_meta(%struct.pblk*, %struct.pblk_line*, i8*, i32) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local i32 @pblk_set_provision(%struct.pblk*, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @pblk_line_meta_free(%struct.pblk_line_mgmt*, %struct.pblk_line*) #1

declare dso_local i32 @kfree(%struct.pblk_line*) #1

declare dso_local i32 @pblk_line_mg_free(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
