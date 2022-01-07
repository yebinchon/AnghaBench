; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-proc.c_ide_settings_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-proc.c_ide_settings_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_proc_devset = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)*, i32, i32, %struct.ide_devset*, i64 }
%struct.TYPE_5__ = type { %struct.ide_proc_devset* }
%struct.ide_devset = type { i64, i64 }
%struct.seq_file = type { i64 }

@ide_setting_mtx = common dso_local global i32 0, align 4
@ide_generic_settings = common dso_local global %struct.ide_proc_devset* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"name\09\09\09value\09\09min\09\09max\09\09mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"----\09\09\09-----\09\09---\09\09---\09\09----\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%-24s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%-16d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"write-only\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%-16d%-16d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ide_settings_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_settings_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ide_proc_devset*, align 8
  %6 = alloca %struct.ide_proc_devset*, align 8
  %7 = alloca %struct.ide_proc_devset*, align 8
  %8 = alloca %struct.ide_devset*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %9, align 8
  %17 = call i32 (...) @proc_ide_settings_warn()
  %18 = call i32 @mutex_lock(i32* @ide_setting_mtx)
  %19 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** @ide_generic_settings, align 8
  store %struct.ide_proc_devset* %19, %struct.ide_proc_devset** %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %21, align 8
  store %struct.ide_proc_devset* %22, %struct.ide_proc_devset** %7, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %174, %2
  %28 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %6, align 8
  %29 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %34 = icmp ne %struct.ide_proc_devset* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %37 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi i1 [ true, %27 ], [ %41, %40 ]
  br i1 %43, label %44, label %177

44:                                               ; preds = %42
  %45 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %6, align 8
  %46 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %51 = icmp ne %struct.ide_proc_devset* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %54 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %59 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %6, align 8
  %62 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @strcmp(i64 %60, i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %68 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %67, i32 1
  store %struct.ide_proc_devset* %68, %struct.ide_proc_devset** %7, align 8
  store %struct.ide_proc_devset* %67, %struct.ide_proc_devset** %5, align 8
  br label %72

69:                                               ; preds = %57
  %70 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %6, align 8
  %71 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %70, i32 1
  store %struct.ide_proc_devset* %71, %struct.ide_proc_devset** %6, align 8
  store %struct.ide_proc_devset* %70, %struct.ide_proc_devset** %5, align 8
  br label %72

72:                                               ; preds = %69, %66
  br label %88

73:                                               ; preds = %52, %49, %44
  %74 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %75 = icmp ne %struct.ide_proc_devset* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %78 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %7, align 8
  %83 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %82, i32 1
  store %struct.ide_proc_devset* %83, %struct.ide_proc_devset** %7, align 8
  store %struct.ide_proc_devset* %82, %struct.ide_proc_devset** %5, align 8
  br label %87

84:                                               ; preds = %76, %73
  %85 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %6, align 8
  %86 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %85, i32 1
  store %struct.ide_proc_devset* %86, %struct.ide_proc_devset** %6, align 8
  store %struct.ide_proc_devset* %85, %struct.ide_proc_devset** %5, align 8
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %72
  %89 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %90 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %90, align 8
  %92 = icmp ne i32 (%struct.TYPE_5__*)* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %95 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = call i32 %96(%struct.TYPE_5__* %97)
  br label %100

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi i32 [ %98, %93 ], [ 1, %99 ]
  store i32 %101, i32* %11, align 4
  %102 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %103 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %102, i32 0, i32 1
  %104 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %103, align 8
  %105 = icmp ne i32 (%struct.TYPE_5__*)* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %108 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %107, i32 0, i32 1
  %109 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = call i32 %109(%struct.TYPE_5__* %110)
  br label %113

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %106
  %114 = phi i32 [ %111, %106 ], [ 1, %112 ]
  store i32 %114, i32* %12, align 4
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %117 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %122 = call i32 @ide_read_setting(%struct.TYPE_5__* %120, %struct.ide_proc_devset* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %113
  %126 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %12, align 4
  %131 = sdiv i32 %129, %130
  %132 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %136

133:                                              ; preds = %113
  %134 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %135 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %125
  %137 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %138 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %139 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %142, %143
  %145 = sub nsw i32 %144, 1
  %146 = load i32, i32* %12, align 4
  %147 = sdiv i32 %145, %146
  %148 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %149 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %11, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, i32* %12, align 4
  %154 = sdiv i32 %152, %153
  %155 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %147, i32 %154)
  %156 = load %struct.ide_proc_devset*, %struct.ide_proc_devset** %5, align 8
  %157 = getelementptr inbounds %struct.ide_proc_devset, %struct.ide_proc_devset* %156, i32 0, i32 4
  %158 = load %struct.ide_devset*, %struct.ide_devset** %157, align 8
  store %struct.ide_devset* %158, %struct.ide_devset** %8, align 8
  %159 = load %struct.ide_devset*, %struct.ide_devset** %8, align 8
  %160 = getelementptr inbounds %struct.ide_devset, %struct.ide_devset* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %136
  %164 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %165 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %136
  %167 = load %struct.ide_devset*, %struct.ide_devset** %8, align 8
  %168 = getelementptr inbounds %struct.ide_devset, %struct.ide_devset* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %173 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %166
  %175 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %176 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %27

177:                                              ; preds = %42
  %178 = call i32 @mutex_unlock(i32* @ide_setting_mtx)
  ret i32 0
}

declare dso_local i32 @proc_ide_settings_warn(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i32 @ide_read_setting(%struct.TYPE_5__*, %struct.ide_proc_devset*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
