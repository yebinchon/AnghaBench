; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_alloc_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_alloc_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_controller = type { i32, %struct.hsi_port**, %struct.TYPE_3__ }
%struct.hsi_port = type { i32, %struct.TYPE_3__, i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@hsi_controller_release = common dso_local global i32 0, align 4
@hsi_dummy_msg = common dso_local global i32 0, align 4
@hsi_dummy_cl = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@hsi_port_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hsi_controller* @hsi_alloc_controller(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.hsi_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hsi_controller*, align 8
  %7 = alloca %struct.hsi_port**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.hsi_controller* null, %struct.hsi_controller** %3, align 8
  br label %160

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @kzalloc(i32 24, i32 %13)
  %15 = bitcast i8* %14 to %struct.hsi_controller*
  store %struct.hsi_controller* %15, %struct.hsi_controller** %6, align 8
  %16 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %17 = icmp ne %struct.hsi_controller* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store %struct.hsi_controller* null, %struct.hsi_controller** %3, align 8
  br label %160

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.hsi_port** @kcalloc(i32 %20, i32 8, i32 %21)
  store %struct.hsi_port** %22, %struct.hsi_port*** %7, align 8
  %23 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %24 = icmp ne %struct.hsi_port** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %27 = call i32 @kfree(%struct.hsi_controller* %26)
  store %struct.hsi_controller* null, %struct.hsi_controller** %3, align 8
  br label %160

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %31 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %33 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %34 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %33, i32 0, i32 1
  store %struct.hsi_port** %32, %struct.hsi_port*** %34, align 8
  %35 = load i32, i32* @hsi_controller_release, align 4
  %36 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %37 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %40 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %39, i32 0, i32 2
  %41 = call i32 @device_initialize(%struct.TYPE_3__* %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %152, %28
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %155

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i8* @kzalloc(i32 64, i32 %47)
  %49 = bitcast i8* %48 to %struct.hsi_port*
  %50 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %50, i64 %52
  store %struct.hsi_port* %49, %struct.hsi_port** %53, align 8
  %54 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %54, i64 %56
  %58 = load %struct.hsi_port*, %struct.hsi_port** %57, align 8
  %59 = icmp eq %struct.hsi_port* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %157

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %63, i64 %65
  %67 = load %struct.hsi_port*, %struct.hsi_port** %66, align 8
  %68 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %67, i32 0, i32 0
  store i32 %62, i32* %68, align 8
  %69 = load i32, i32* @hsi_dummy_msg, align 4
  %70 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %70, i64 %72
  %74 = load %struct.hsi_port*, %struct.hsi_port** %73, align 8
  %75 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %74, i32 0, i32 9
  store i32 %69, i32* %75, align 8
  %76 = load i8*, i8** @hsi_dummy_cl, align 8
  %77 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %77, i64 %79
  %81 = load %struct.hsi_port*, %struct.hsi_port** %80, align 8
  %82 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %81, i32 0, i32 8
  store i8* %76, i8** %82, align 8
  %83 = load i8*, i8** @hsi_dummy_cl, align 8
  %84 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %84, i64 %86
  %88 = load %struct.hsi_port*, %struct.hsi_port** %87, align 8
  %89 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %88, i32 0, i32 7
  store i8* %83, i8** %89, align 8
  %90 = load i8*, i8** @hsi_dummy_cl, align 8
  %91 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %91, i64 %93
  %95 = load %struct.hsi_port*, %struct.hsi_port** %94, align 8
  %96 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %95, i32 0, i32 6
  store i8* %90, i8** %96, align 8
  %97 = load i8*, i8** @hsi_dummy_cl, align 8
  %98 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %98, i64 %100
  %102 = load %struct.hsi_port*, %struct.hsi_port** %101, align 8
  %103 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %102, i32 0, i32 5
  store i8* %97, i8** %103, align 8
  %104 = load i8*, i8** @hsi_dummy_cl, align 8
  %105 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %105, i64 %107
  %109 = load %struct.hsi_port*, %struct.hsi_port** %108, align 8
  %110 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %109, i32 0, i32 4
  store i8* %104, i8** %110, align 8
  %111 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %111, i64 %113
  %115 = load %struct.hsi_port*, %struct.hsi_port** %114, align 8
  %116 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %115, i32 0, i32 3
  %117 = call i32 @mutex_init(i32* %116)
  %118 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %118, i64 %120
  %122 = load %struct.hsi_port*, %struct.hsi_port** %121, align 8
  %123 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %122, i32 0, i32 2
  %124 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %123)
  %125 = load %struct.hsi_port**, %struct.hsi_port*** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %125, i64 %127
  %129 = load %struct.hsi_port*, %struct.hsi_port** %128, align 8
  %130 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %129, i32 0, i32 1
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @dev_set_name(%struct.TYPE_3__* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @hsi_port_release, align 4
  %134 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %135 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %134, i32 0, i32 1
  %136 = load %struct.hsi_port**, %struct.hsi_port*** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %136, i64 %138
  %140 = load %struct.hsi_port*, %struct.hsi_port** %139, align 8
  %141 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32 %133, i32* %142, align 4
  %143 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %144 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %143, i32 0, i32 1
  %145 = load %struct.hsi_port**, %struct.hsi_port*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %145, i64 %147
  %149 = load %struct.hsi_port*, %struct.hsi_port** %148, align 8
  %150 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %149, i32 0, i32 1
  %151 = call i32 @device_initialize(%struct.TYPE_3__* %150)
  br label %152

152:                                              ; preds = %61
  %153 = load i32, i32* %8, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %42

155:                                              ; preds = %42
  %156 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  store %struct.hsi_controller* %156, %struct.hsi_controller** %3, align 8
  br label %160

157:                                              ; preds = %60
  %158 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %159 = call i32 @hsi_put_controller(%struct.hsi_controller* %158)
  store %struct.hsi_controller* null, %struct.hsi_controller** %3, align 8
  br label %160

160:                                              ; preds = %157, %155, %25, %18, %11
  %161 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  ret %struct.hsi_controller* %161
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.hsi_port** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.hsi_controller*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @hsi_put_controller(%struct.hsi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
