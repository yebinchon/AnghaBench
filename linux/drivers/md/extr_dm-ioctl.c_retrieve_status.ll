; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_retrieve_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_retrieve_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.dm_ioctl = type { i32, i32, i64, i32 }
%struct.dm_target_spec = type { i32, i32, i32, i32, i64 }
%struct.dm_target = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*, i32, i32, i8*, i64)*, i32 }

@DM_STATUS_TABLE_FLAG = common dso_local global i32 0, align 4
@STATUSTYPE_TABLE = common dso_local global i32 0, align 4
@STATUSTYPE_INFO = common dso_local global i32 0, align 4
@DM_BUFFER_FULL_FLAG = common dso_local global i32 0, align 4
@DM_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@DM_STATUS_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_table*, %struct.dm_ioctl*, i64)* @retrieve_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retrieve_status(%struct.dm_table* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.dm_ioctl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_target_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dm_target*, align 8
  %18 = alloca i64, align 8
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i8* @get_result_buffer(%struct.dm_ioctl* %19, i64 %20, i64* %14)
  store i8* %21, i8** %10, align 8
  store i8* %21, i8** %11, align 8
  %22 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %23 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DM_STATUS_TABLE_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @STATUSTYPE_TABLE, align 4
  store i32 %29, i32* %12, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @STATUSTYPE_INFO, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %34 = call i32 @dm_table_get_num_targets(%struct.dm_table* %33)
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %170, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %173

39:                                               ; preds = %35
  %40 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %40, i32 %41)
  store %struct.dm_target* %42, %struct.dm_target** %17, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sub i64 %43, %48
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ule i64 %50, 24
  br i1 %51, label %52, label %58

52:                                               ; preds = %39
  %53 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %54 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %55 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %173

58:                                               ; preds = %39
  %59 = load i8*, i8** %11, align 8
  %60 = bitcast i8* %59 to %struct.dm_target_spec*
  store %struct.dm_target_spec* %60, %struct.dm_target_spec** %9, align 8
  %61 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %62 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %67 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %69 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %72 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %74 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %77 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @strncpy(i32 %75, i32 %80, i32 4)
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 24
  store i8* %83, i8** %11, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sub i64 %84, %89
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp ule i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %58
  %94 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %95 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %96 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %173

99:                                               ; preds = %58
  %100 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %101 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.dm_target*, i32, i32, i8*, i64)*, i32 (%struct.dm_target*, i32, i32, i8*, i64)** %103, align 8
  %105 = icmp ne i32 (%struct.dm_target*, i32, i32, i8*, i64)* %104, null
  br i1 %105, label %106, label %129

106:                                              ; preds = %99
  %107 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %108 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @DM_NOFLUSH_FLAG, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @DM_STATUS_NOFLUSH_FLAG, align 4
  %115 = load i32, i32* %16, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %113, %106
  %118 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %119 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32 (%struct.dm_target*, i32, i32, i8*, i64)*, i32 (%struct.dm_target*, i32, i32, i8*, i64)** %121, align 8
  %123 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i32 %122(%struct.dm_target* %123, i32 %124, i32 %125, i8* %126, i64 %127)
  br label %132

129:                                              ; preds = %99
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 0, i8* %131, align 1
  br label %132

132:                                              ; preds = %129, %117
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %18, align 8
  %137 = load i64, i64* %18, align 8
  %138 = load i64, i64* %13, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %142 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %143 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %173

146:                                              ; preds = %132
  %147 = load i64, i64* %18, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %11, align 8
  %150 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %151 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load i8*, i8** %11, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = add nsw i64 %153, %158
  store i64 %159, i64* %15, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = call i8* @align_ptr(i8* %160)
  store i8* %161, i8** %11, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = trunc i64 %166 to i32
  %168 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %169 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %146
  %171 = load i32, i32* %7, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %35

173:                                              ; preds = %140, %93, %52, %35
  %174 = load i64, i64* %15, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i64, i64* %15, align 8
  %178 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %179 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %176, %173
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %183 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  ret void
}

declare dso_local i8* @get_result_buffer(%struct.dm_ioctl*, i64, i64*) #1

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @align_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
