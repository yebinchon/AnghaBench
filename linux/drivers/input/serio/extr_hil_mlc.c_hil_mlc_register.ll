; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hil_mlc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hil_mlc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32*, i64*, i64*, %struct.TYPE_8__*, %struct.serio**, i32, i64, i64, i32, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }
%struct.serio = type { %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_10__, i32, i32 }

@HIL_MLC_DEVMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"HIL_SERIO%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HIL%d\00", align 1
@hil_mlc_serio_id = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@hil_mlc_serio_write = common dso_local global i32 0, align 4
@hil_mlc_serio_open = common dso_local global i32 0, align 4
@hil_mlc_serio_close = common dso_local global i32 0, align 4
@hil_mlcs_tasklet = common dso_local global i32 0, align 4
@hil_mlcs_lock = common dso_local global i32 0, align 4
@hil_mlcs = common dso_local global i32 0, align 4
@HILSEN_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hil_mlc_register(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.serio*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = icmp eq %struct.TYPE_9__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 15
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 14
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 13
  %17 = call i32 @rwlock_init(i32* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 12
  %20 = call i32 @sema_init(i32* %19, i32 1)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 11
  %23 = call i32 @sema_init(i32* %22, i32 1)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 10
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 8
  %32 = call i32 @sema_init(i32* %31, i32 0)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = call i32 @hil_mlc_clear_di_scratch(%struct.TYPE_9__* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i32 @hil_mlc_clear_di_map(%struct.TYPE_9__* %35, i32 0)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %153, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @HIL_MLC_DEVMEM, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %156

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @hil_mlc_copy_di_scratch(%struct.TYPE_9__* %42, i32 %43)
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.serio* @kzalloc(i32 32, i32 %45)
  store %struct.serio* %46, %struct.serio** %6, align 8
  %47 = load %struct.serio*, %struct.serio** %6, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 7
  %50 = load %struct.serio**, %struct.serio*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.serio*, %struct.serio** %50, i64 %52
  store %struct.serio* %47, %struct.serio** %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 7
  %56 = load %struct.serio**, %struct.serio*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.serio*, %struct.serio** %56, i64 %58
  %60 = load %struct.serio*, %struct.serio** %59, align 8
  %61 = icmp ne %struct.serio* %60, null
  br i1 %61, label %81, label %62

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 7
  %69 = load %struct.serio**, %struct.serio*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.serio*, %struct.serio** %69, i64 %71
  %73 = load %struct.serio*, %struct.serio** %72, align 8
  %74 = call i32 @kfree(%struct.serio* %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %4, align 4
  br label %63

78:                                               ; preds = %63
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %170

81:                                               ; preds = %41
  %82 = load %struct.serio*, %struct.serio** %6, align 8
  %83 = getelementptr inbounds %struct.serio, %struct.serio* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @snprintf(i32 %84, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.serio*, %struct.serio** %6, align 8
  %88 = getelementptr inbounds %struct.serio, %struct.serio* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @snprintf(i32 %89, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.serio*, %struct.serio** %6, align 8
  %93 = getelementptr inbounds %struct.serio, %struct.serio* %92, i32 0, i32 4
  %94 = bitcast %struct.TYPE_10__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 bitcast (%struct.TYPE_10__* @hil_mlc_serio_id to i8*), i64 4, i1 false)
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.serio*, %struct.serio** %6, align 8
  %97 = getelementptr inbounds %struct.serio, %struct.serio* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @hil_mlc_serio_write, align 4
  %100 = load %struct.serio*, %struct.serio** %6, align 8
  %101 = getelementptr inbounds %struct.serio, %struct.serio* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @hil_mlc_serio_open, align 4
  %103 = load %struct.serio*, %struct.serio** %6, align 8
  %104 = getelementptr inbounds %struct.serio, %struct.serio* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @hil_mlc_serio_close, align 4
  %106 = load %struct.serio*, %struct.serio** %6, align 8
  %107 = getelementptr inbounds %struct.serio, %struct.serio* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = load %struct.serio*, %struct.serio** %6, align 8
  %115 = getelementptr inbounds %struct.serio, %struct.serio* %114, i32 0, i32 0
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %115, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 6
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %123, align 8
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 6
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i32 -1, i32* %138, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 5
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 0, i64* %150, align 8
  %151 = load %struct.serio*, %struct.serio** %6, align 8
  %152 = call i32 @serio_register_port(%struct.serio* %151)
  br label %153

153:                                              ; preds = %81
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %37

156:                                              ; preds = %37
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  store i32* @hil_mlcs_tasklet, i32** %158, align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i32 @write_lock_irqsave(i32* @hil_mlcs_lock, i64 %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = call i32 @list_add_tail(i32* %162, i32* @hil_mlcs)
  %164 = load i32, i32* @HILSEN_START, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @write_unlock_irqrestore(i32* @hil_mlcs_lock, i64 %167)
  %169 = call i32 @tasklet_schedule(i32* @hil_mlcs_tasklet)
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %156, %78
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @hil_mlc_clear_di_scratch(%struct.TYPE_9__*) #1

declare dso_local i32 @hil_mlc_clear_di_map(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @hil_mlc_copy_di_scratch(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.serio*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
