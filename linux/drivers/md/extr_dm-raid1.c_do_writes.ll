; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_do_writes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_do_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, i32, i32, %struct.bio_list, i32, %struct.bio_list }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_dirty_log*, i32)* }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio_list*)* @do_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_writes(%struct.mirror_set* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio_list, align 4
  %8 = alloca %struct.bio_list, align 4
  %9 = alloca %struct.bio_list, align 4
  %10 = alloca %struct.bio_list*, align 8
  %11 = alloca %struct.bio_list, align 4
  %12 = alloca %struct.dm_dirty_log*, align 8
  %13 = alloca i32, align 4
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  store %struct.bio_list* null, %struct.bio_list** %10, align 8
  %14 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %15 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %16)
  store %struct.dm_dirty_log* %17, %struct.dm_dirty_log** %12, align 8
  %18 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %19 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %205

23:                                               ; preds = %2
  %24 = call i32 @bio_list_init(%struct.bio_list* %7)
  %25 = call i32 @bio_list_init(%struct.bio_list* %8)
  %26 = call i32 @bio_list_init(%struct.bio_list* %9)
  %27 = call i32 @bio_list_init(%struct.bio_list* %11)
  br label %28

28:                                               ; preds = %82, %69, %44, %23
  %29 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %30 = call %struct.bio* @bio_list_pop(%struct.bio_list* %29)
  store %struct.bio* %30, %struct.bio** %6, align 8
  %31 = icmp ne %struct.bio* %30, null
  br i1 %31, label %32, label %86

32:                                               ; preds = %28
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @REQ_PREFLUSH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  %41 = call i64 @bio_op(%struct.bio* %40)
  %42 = load i64, i64* @REQ_OP_DISCARD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %32
  %45 = load %struct.bio*, %struct.bio** %6, align 8
  %46 = call i32 @bio_list_add(%struct.bio_list* %7, %struct.bio* %45)
  br label %28

47:                                               ; preds = %39
  %48 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %49 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bio*, %struct.bio** %6, align 8
  %52 = call i32 @dm_rh_bio_to_region(i32 %50, %struct.bio* %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %54 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64 (%struct.dm_dirty_log*, i32)*, i64 (%struct.dm_dirty_log*, i32)** %56, align 8
  %58 = icmp ne i64 (%struct.dm_dirty_log*, i32)* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %61 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64 (%struct.dm_dirty_log*, i32)*, i64 (%struct.dm_dirty_log*, i32)** %63, align 8
  %65 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i64 %64(%struct.dm_dirty_log* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.bio*, %struct.bio** %6, align 8
  %71 = call i32 @bio_list_add(%struct.bio_list* %11, %struct.bio* %70)
  br label %28

72:                                               ; preds = %59, %47
  %73 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %74 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @dm_rh_get_state(i32 %75, i32 %76, i32 1)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  switch i32 %78, label %82 [
    i32 131, label %79
    i32 130, label %79
    i32 129, label %80
    i32 128, label %81
  ]

79:                                               ; preds = %72, %72
  store %struct.bio_list* %7, %struct.bio_list** %10, align 8
  br label %82

80:                                               ; preds = %72
  store %struct.bio_list* %8, %struct.bio_list** %10, align 8
  br label %82

81:                                               ; preds = %72
  store %struct.bio_list* %9, %struct.bio_list** %10, align 8
  br label %82

82:                                               ; preds = %72, %81, %80, %79
  %83 = load %struct.bio_list*, %struct.bio_list** %10, align 8
  %84 = load %struct.bio*, %struct.bio** %6, align 8
  %85 = call i32 @bio_list_add(%struct.bio_list* %83, %struct.bio* %84)
  br label %28

86:                                               ; preds = %28
  %87 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %93 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %92, i32 0, i32 2
  %94 = call i32 @spin_lock_irq(i32* %93)
  %95 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %96 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %95, i32 0, i32 5
  %97 = call i32 @bio_list_merge(%struct.bio_list* %96, %struct.bio_list* %11)
  %98 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %99 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %98, i32 0, i32 2
  %100 = call i32 @spin_unlock_irq(i32* %99)
  %101 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %102 = call i32 @delayed_wake(%struct.mirror_set* %101)
  br label %103

103:                                              ; preds = %91, %86
  %104 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %105 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dm_rh_inc_pending(i32 %106, %struct.bio_list* %7)
  %108 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %109 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dm_rh_inc_pending(i32 %110, %struct.bio_list* %8)
  %112 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %113 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @dm_rh_flush(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  br label %122

118:                                              ; preds = %103
  %119 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %120 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  br label %122

122:                                              ; preds = %118, %117
  %123 = phi i32 [ 1, %117 ], [ %121, %118 ]
  %124 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %125 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %127 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %122
  %132 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %133 = call i64 @errors_handled(%struct.mirror_set* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %137 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %136, i32 0, i32 2
  %138 = call i32 @spin_lock_irq(i32* %137)
  %139 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %140 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %139, i32 0, i32 3
  %141 = call i32 @bio_list_merge(%struct.bio_list* %140, %struct.bio_list* %7)
  %142 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %143 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %142, i32 0, i32 2
  %144 = call i32 @spin_unlock_irq(i32* %143)
  %145 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %146 = call i32 @wakeup_mirrord(%struct.mirror_set* %145)
  br label %156

147:                                              ; preds = %131, %122
  br label %148

148:                                              ; preds = %151, %147
  %149 = call %struct.bio* @bio_list_pop(%struct.bio_list* %7)
  store %struct.bio* %149, %struct.bio** %6, align 8
  %150 = icmp ne %struct.bio* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %153 = load %struct.bio*, %struct.bio** %6, align 8
  %154 = call i32 @do_write(%struct.mirror_set* %152, %struct.bio* %153)
  br label %148

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %135
  br label %157

157:                                              ; preds = %160, %156
  %158 = call %struct.bio* @bio_list_pop(%struct.bio_list* %9)
  store %struct.bio* %158, %struct.bio** %6, align 8
  %159 = icmp ne %struct.bio* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %162 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bio*, %struct.bio** %6, align 8
  %165 = call i32 @dm_rh_delay(i32 %163, %struct.bio* %164)
  br label %157

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %204, %166
  %168 = call %struct.bio* @bio_list_pop(%struct.bio_list* %8)
  store %struct.bio* %168, %struct.bio** %6, align 8
  %169 = icmp ne %struct.bio* %168, null
  br i1 %169, label %170, label %205

170:                                              ; preds = %167
  %171 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %172 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %170
  %177 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %178 = call i64 @errors_handled(%struct.mirror_set* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %176
  %181 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %182 = call i32 @keep_log(%struct.mirror_set* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %180
  %185 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %186 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %185, i32 0, i32 2
  %187 = call i32 @spin_lock_irq(i32* %186)
  %188 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %189 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %188, i32 0, i32 3
  %190 = load %struct.bio*, %struct.bio** %6, align 8
  %191 = call i32 @bio_list_add(%struct.bio_list* %189, %struct.bio* %190)
  %192 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %193 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %192, i32 0, i32 2
  %194 = call i32 @spin_unlock_irq(i32* %193)
  %195 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %196 = call i32 @wakeup_mirrord(%struct.mirror_set* %195)
  br label %204

197:                                              ; preds = %180, %176, %170
  %198 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %199 = call i32 @get_default_mirror(%struct.mirror_set* %198)
  %200 = load %struct.bio*, %struct.bio** %6, align 8
  %201 = call i32 @map_bio(i32 %199, %struct.bio* %200)
  %202 = load %struct.bio*, %struct.bio** %6, align 8
  %203 = call i32 @generic_make_request(%struct.bio* %202)
  br label %204

204:                                              ; preds = %197, %184
  br label %167

205:                                              ; preds = %22, %167
  ret void
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local i32 @dm_rh_bio_to_region(i32, %struct.bio*) #1

declare dso_local i32 @dm_rh_get_state(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @delayed_wake(%struct.mirror_set*) #1

declare dso_local i32 @dm_rh_inc_pending(i32, %struct.bio_list*) #1

declare dso_local i64 @dm_rh_flush(i32) #1

declare dso_local i64 @errors_handled(%struct.mirror_set*) #1

declare dso_local i32 @wakeup_mirrord(%struct.mirror_set*) #1

declare dso_local i32 @do_write(%struct.mirror_set*, %struct.bio*) #1

declare dso_local i32 @dm_rh_delay(i32, %struct.bio*) #1

declare dso_local i32 @keep_log(%struct.mirror_set*) #1

declare dso_local i32 @map_bio(i32, %struct.bio*) #1

declare dso_local i32 @get_default_mirror(%struct.mirror_set*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
