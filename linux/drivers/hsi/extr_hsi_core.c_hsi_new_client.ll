; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_new_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_new_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.hsi_client* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32, %struct.hsi_client* }
%struct.hsi_port = type { i32 }
%struct.hsi_board_info = type { i32, i32*, i32, %struct.TYPE_6__, %struct.TYPE_7__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hsi_bus_type = common dso_local global i32 0, align 4
@hsi_client_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"hsi: failed to register client: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hsi_client* @hsi_new_client(%struct.hsi_port* %0, %struct.hsi_board_info* %1) #0 {
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.hsi_port*, align 8
  %5 = alloca %struct.hsi_board_info*, align 8
  %6 = alloca %struct.hsi_client*, align 8
  %7 = alloca i64, align 8
  store %struct.hsi_port* %0, %struct.hsi_port** %4, align 8
  store %struct.hsi_board_info* %1, %struct.hsi_board_info** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hsi_client* @kzalloc(i32 64, i32 %8)
  store %struct.hsi_client* %9, %struct.hsi_client** %6, align 8
  %10 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %11 = icmp ne %struct.hsi_client* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %148

13:                                               ; preds = %2
  %14 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %15 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %14, i32 0, i32 0
  %16 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %17 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %16, i32 0, i32 4
  %18 = bitcast %struct.TYPE_7__* %15 to i8*
  %19 = bitcast %struct.TYPE_7__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %21 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.hsi_client*, %struct.hsi_client** %22, align 8
  %24 = icmp ne %struct.hsi_client* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %13
  %26 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %27 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 64
  store i64 %31, i64* %7, align 8
  %32 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %33 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.hsi_client*, %struct.hsi_client** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kmemdup(%struct.hsi_client* %35, i64 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.hsi_client*
  %40 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %41 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store %struct.hsi_client* %39, %struct.hsi_client** %42, align 8
  %43 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %44 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.hsi_client*, %struct.hsi_client** %45, align 8
  %47 = icmp ne %struct.hsi_client* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %25
  br label %145

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49, %13
  %51 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %52 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %51, i32 0, i32 2
  %53 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %54 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %53, i32 0, i32 3
  %55 = bitcast %struct.TYPE_6__* %52 to i8*
  %56 = bitcast %struct.TYPE_6__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %58 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.hsi_client*, %struct.hsi_client** %59, align 8
  %61 = icmp ne %struct.hsi_client* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %50
  %63 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %64 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 64
  store i64 %68, i64* %7, align 8
  %69 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %70 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.hsi_client*, %struct.hsi_client** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kmemdup(%struct.hsi_client* %72, i64 %73, i32 %74)
  %76 = bitcast i8* %75 to %struct.hsi_client*
  %77 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %78 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store %struct.hsi_client* %76, %struct.hsi_client** %79, align 8
  %80 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %81 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.hsi_client*, %struct.hsi_client** %82, align 8
  %84 = icmp ne %struct.hsi_client* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %62
  br label %139

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86, %50
  %88 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %89 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  store i32* @hsi_bus_type, i32** %90, align 8
  %91 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %92 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %91, i32 0, i32 0
  %93 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %94 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i32* %92, i32** %95, align 8
  %96 = load i32, i32* @hsi_client_release, align 4
  %97 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %98 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %101 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %100, i32 0, i32 1
  %102 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %103 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_set_name(%struct.TYPE_8__* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %107 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %110 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %113 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %87
  %117 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %118 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %122 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %116, %87
  %125 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %126 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %125, i32 0, i32 1
  %127 = call i64 @device_register(%struct.TYPE_8__* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.hsi_board_info*, %struct.hsi_board_info** %5, align 8
  %131 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %135 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %134, i32 0, i32 1
  %136 = call i32 @put_device(%struct.TYPE_8__* %135)
  br label %137

137:                                              ; preds = %129, %124
  %138 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  store %struct.hsi_client* %138, %struct.hsi_client** %3, align 8
  br label %149

139:                                              ; preds = %85
  %140 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %141 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load %struct.hsi_client*, %struct.hsi_client** %142, align 8
  %144 = call i32 @kfree(%struct.hsi_client* %143)
  br label %145

145:                                              ; preds = %139, %48
  %146 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %147 = call i32 @kfree(%struct.hsi_client* %146)
  br label %148

148:                                              ; preds = %145, %12
  store %struct.hsi_client* null, %struct.hsi_client** %3, align 8
  br label %149

149:                                              ; preds = %148, %137
  %150 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  ret %struct.hsi_client* %150
}

declare dso_local %struct.hsi_client* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @kmemdup(%struct.hsi_client*, i64, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @device_register(%struct.TYPE_8__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.hsi_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
