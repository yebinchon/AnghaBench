; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-smbus.c_psmouse_smbus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-smbus.c_psmouse_smbus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, i32, i8*, i8*, i32, %struct.psmouse_smbus_dev* }
%struct.psmouse_smbus_dev = type { i32, i32, %struct.i2c_board_info, i64, %struct.psmouse* }
%struct.i2c_board_info = type { %struct.psmouse_smbus_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@psmouse_smbus_process_byte = common dso_local global i32 0, align 4
@psmouse_smbus_reconnect = common dso_local global i8* null, align 8
@psmouse_smbus_disconnect = common dso_local global i32 0, align 4
@psmouse_smbus_mutex = common dso_local global i32 0, align 4
@psmouse_smbus_list = common dso_local global i32 0, align 4
@psmouse_smbus_create_companion = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_smbus_init(%struct.psmouse* %0, %struct.i2c_board_info* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.psmouse*, align 8
  %9 = alloca %struct.i2c_board_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.psmouse_smbus_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %8, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.psmouse_smbus_dev* @kzalloc(i32 32, i32 %16)
  store %struct.psmouse_smbus_dev* %17, %struct.psmouse_smbus_dev** %14, align 8
  %18 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %19 = icmp ne %struct.psmouse_smbus_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %125

23:                                               ; preds = %6
  %24 = load %struct.psmouse*, %struct.psmouse** %8, align 8
  %25 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %26 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %25, i32 0, i32 4
  store %struct.psmouse* %24, %struct.psmouse** %26, align 8
  %27 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %28 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %27, i32 0, i32 2
  %29 = load %struct.i2c_board_info*, %struct.i2c_board_info** %9, align 8
  %30 = bitcast %struct.i2c_board_info* %28 to i8*
  %31 = bitcast %struct.i2c_board_info* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %34 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %23
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.psmouse_smbus_dev* @kmemdup(i8* %38, i64 %39, i32 %40)
  %42 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %43 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %43, i32 0, i32 0
  store %struct.psmouse_smbus_dev* %41, %struct.psmouse_smbus_dev** %44, align 8
  %45 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %46 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %46, i32 0, i32 0
  %48 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %47, align 8
  %49 = icmp ne %struct.psmouse_smbus_dev* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %37
  %51 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %52 = call i32 @kfree(%struct.psmouse_smbus_dev* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %125

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.psmouse*, %struct.psmouse** %8, align 8
  %61 = call i32 @psmouse_deactivate(%struct.psmouse* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %64 = load %struct.psmouse*, %struct.psmouse** %8, align 8
  %65 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %64, i32 0, i32 5
  store %struct.psmouse_smbus_dev* %63, %struct.psmouse_smbus_dev** %65, align 8
  %66 = load i32, i32* @psmouse_smbus_process_byte, align 4
  %67 = load %struct.psmouse*, %struct.psmouse** %8, align 8
  %68 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** @psmouse_smbus_reconnect, align 8
  %70 = load %struct.psmouse*, %struct.psmouse** %8, align 8
  %71 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @psmouse_smbus_reconnect, align 8
  %73 = load %struct.psmouse*, %struct.psmouse** %8, align 8
  %74 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @psmouse_smbus_disconnect, align 4
  %76 = load %struct.psmouse*, %struct.psmouse** %8, align 8
  %77 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.psmouse*, %struct.psmouse** %8, align 8
  %79 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = call i32 @mutex_lock(i32* @psmouse_smbus_mutex)
  %81 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %82 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %81, i32 0, i32 1
  %83 = call i32 @list_add_tail(i32* %82, i32* @psmouse_smbus_list)
  %84 = call i32 @mutex_unlock(i32* @psmouse_smbus_mutex)
  %85 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %86 = load i32, i32* @psmouse_smbus_create_companion, align 4
  %87 = call i32 @i2c_for_each_dev(%struct.psmouse_smbus_dev* %85, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %89 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %125

93:                                               ; preds = %62
  %94 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %95 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %95, i32 0, i32 0
  %97 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %96, align 8
  %98 = call i32 @kfree(%struct.psmouse_smbus_dev* %97)
  %99 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %100 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %100, i32 0, i32 0
  store %struct.psmouse_smbus_dev* null, %struct.psmouse_smbus_dev** %101, align 8
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %104, %93
  %108 = call i32 @mutex_lock(i32* @psmouse_smbus_mutex)
  %109 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %110 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %109, i32 0, i32 1
  %111 = call i32 @list_del(i32* %110)
  %112 = call i32 @mutex_unlock(i32* @psmouse_smbus_mutex)
  %113 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %14, align 8
  %114 = call i32 @kfree(%struct.psmouse_smbus_dev* %113)
  br label %115

115:                                              ; preds = %107, %104
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %15, align 4
  br label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EAGAIN, align 4
  %122 = sub nsw i32 0, %121
  br label %123

123:                                              ; preds = %120, %118
  %124 = phi i32 [ %119, %118 ], [ %122, %120 ]
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %123, %92, %50, %20
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local %struct.psmouse_smbus_dev* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.psmouse_smbus_dev* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @kfree(%struct.psmouse_smbus_dev*) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_for_each_dev(%struct.psmouse_smbus_dev*, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
